import React, { useCallback, useEffect, useState } from "react";
import Lecture14 from "./contracts/Lecture14.json";
import getWeb3 from "./getWeb3";

import "./App.css";
const App = () =>{

  const [web3,setWeb3] = useState(null);
  const [userAccount,setuserAccount] = useState(null);
  const [lecture14,setLecture14] = useState(null);
  const [loading,setLoading] = useState(false);
  const [event,setEvent] = useState("Nothing");

  const [inp, setInp] = useState("");
  useEffect(()=>{
  async function checkAPI(){
    try {
      await checkUpEnv();
      await setLoading(true);
    } catch (error) {
      if(error === "MetamskNeeds"){
        alert(
          `Download link:metamask`,
        );
      }else{
        console.log(error);
        alert(
          `Failed to load web3, accounts, or contract. Check console for details.`,
        );
      }
    }
  }
  checkAPI();
  },[])

  const checkUpEnv = useCallback( async()=>{
    let web3;
    if(window.ethereum){
      web3 = await getWeb3();
      setWeb3(web3);
    }else{
      throw "MetamskNeeds";
    }
    let users = await web3.eth.getAccounts();
    await setuserAccount(users[0]);
    await deployContracts(web3,users);
  },[])
  const deployContracts = useCallback(async (web3,users)=>{
    let networkId = await web3.eth.net.getId();
    let lec14 = await new web3.eth.Contract(
      Lecture14.abi,
      Lecture14.networks[networkId] && Lecture14.networks[networkId].address,
    )
    await setLecture14(lec14);
  },[])


  async function getEvent (){
    let events = await lecture14.getPastEvents('numberTracker2',{ filter:{num:[2,1]},fromBlock: 1, toBlock:'latest'});
    console.log(events)

    let events2 = await lecture14.getPastEvents('numberTracker',{ filter:{num:[2,1]},fromBlock: 1, toBlock:'latest'});
    console.log(events2)
  } 

  async function pushNow (){
   let abc = await lecture14.methods.PushEvent(inp).send({from:userAccount});
  
  } 

  return(
    <>
      {
    !loading ? 
    <div>Loading Web3, accounts, and contract...</div>
    : 
    <>

    <div style={{ textAlign: 'center'}}>
    <div style={{ marginTop:'100px'}} >
        <input style={{width:'200px',height:'50px',fontSize:"15px"}} value={inp} onChange={(e)=>{setInp(e.target.value)}} ></input>
        <button style={{width:'70px',height:'55px',fontSize:"15px" ,color:'white', background: "black"}}  onClick={pushNow}>Push</button>
      
      </div>
      <div>
      <button style={{width:'280px',height:'55px',fontSize:"15px" ,color:'white', background: "black"}}  onClick={getEvent}>Click</button>
      </div>


    </div>
    
    </>
    }
    </>
  )
}


export default App;
