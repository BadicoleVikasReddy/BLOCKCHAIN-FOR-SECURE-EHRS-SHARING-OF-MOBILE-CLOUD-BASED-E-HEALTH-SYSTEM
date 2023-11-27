# BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM
ABSTRACT
Recent years have witnessed a paradigm shift in the storage of Electronic Health Records (EHRs) on mobile cloud environments, where mobile devices are integrated with cloud computing to facilitate medical data exchanges among patients and healthcare providers. This advanced model enables healthcare services with low operational cost, high flexibility, and EHRs availability. However, this new paradigm also raises concerns about data privacy and network security for e-health systems. How to reliably share EHRs among mobile users while guaranteeing high-security levels in the mobile cloud is a challenging issue. In this paper, we propose a novel EHRs sharing framework that combines blockchain and the decentralized interplanetary file system (IPFS) on a mobile cloud platform. Particularly, we design a trustworthy access control mechanism using smart contracts to achieve secure EHRs sharing among different patients and medical providers. We present a prototype implementation using Ethereum blockchain in a real data sharing scenario on a mobile app with Amazon cloud computing. The empirical results show that our proposal provides an effective solution for reliable data exchanges on mobile clouds while preserving sensitive health information against potential threats. The system evaluation and security analysis also demonstrate the performance improvements in lightweight access control design, minimum network latency with high security and data privacy levels, compared to the existing data sharing models.

SOFTWARE REQUIREMENTS:
•	Operating System		-	any
•	Programming Language	-	Solidity, HTML, JavaScript
•	Library				-	web3js
•	Block chain gateway		-	Meta mask
•	Test network account		-          ex : rinkeby, ropsten, kovanetc

SCREEN SHOT 1:
To run the project, you can either visit http://ehrsharing.herokuapp.com/ for the deployed version of the project or run the files on your local machine.






![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/b3081bd5-3b26-48bf-92c5-dbe62bc5283c)



We can register patients from the home page by providing necessary details in the form. When we register button a JavaScript function invokes a smart contract creating a transaction and stores details on the test network.




SCREEN SHOT 2:
Hospital:
To register hospital, we can go to hospital registration page and enter all the necessary details and create a transaction to store hospital data on the network.

![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/35406112-8f77-49c8-b453-eab3607af764)






To retrieve the details, we enter the hospital id and the details are retrieved from the network
![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/87d8cc08-0eb1-4229-b266-bc7191c0ff74)






SCREEN SHOT 3:
Doctor:
To register doctor, we can go to doctor registration page and enter all the necessary details and create transaction to store doctor data on the network.


![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/21513437-0ecf-4acb-8757-a8f8e645c57a)





To retrieve the details, we enter the doctor id and the details are retrieved from the network. The doctor can only be registered and retrieved by hospital.


![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/9f740b54-5fa7-4c7d-a6f1-074061783880)





Figure 7.5: Display Doctor Details
SCREEN SHOT 4:
Patient:
To register patient, we can go to patient registration page and enter all the necessary details and create a transaction to store patient data on the network.









![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/e05c3c9e-bd67-4cb0-a8cf-c247ad149dee)








To retrieve the details, we enter the patient id and the details are retrieved from the network. The patient can only be registered and retrieved by doctor.







![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/68ce39de-2a93-4872-91eb-5c9d6319364e)









SCREEN SHOT 5:
Records:
To register records, we can go to record creation page and enter all the necessary details and create a transaction to store patient records data on the network.

![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/bb14aa4c-09e1-4976-975f-3e3aa3b68add)












To retrieve the details, we enter the patient id and the details are retrieved from the network. 




![image](https://github.com/BadicoleVikasReddy/BLOCKCHAIN-FOR-SECURE-EHRS-SHARING-OF-MOBILE-CLOUD-BASED-E-HEALTH-SYSTEM/assets/152059730/96b55b5f-314f-4077-93b4-a582e2ef7912)





