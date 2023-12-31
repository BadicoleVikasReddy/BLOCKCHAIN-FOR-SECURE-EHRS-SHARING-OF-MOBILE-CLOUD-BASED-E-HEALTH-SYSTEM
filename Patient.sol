pragma solidity 0.8.10;
 
/*
 * @title Medical records
 * @dev Store & retreive patient details 
 */

contract Patient {
    mapping(uint256 => patient) patientlist;
    mapping(uint256 =>attendant) attendantlist;

    struct patient{
    string patient_name;
    uint256 age;
    string gender;
    string height;
    uint256 weight;
    string patient_address;
    uint256 phone_no;
    string email_id;
    uint256 date;
    uint256 doctor_id;
    uint256 hospital_id;
    }
    patient p;
     
    struct attendant{
        uint256 patient_id;
        string attendant_name;
        string attendant_relation;
        uint256 attendant_phn_no;
    }
    attendant a;
    
     /**
     * @dev Store patient details
     * @param patient_id patient id
     * @param _patient_name patient name
     * @param _age age
     * @param _gender gender
     * @param _height height
     * @param _weight weight
     * @param _patient_address address
     * @param _phone_no phone number
     * @param _email_id mail id
     * @param _date date
     */
     function store_patient_details(uint256 patient_id,string memory _patient_name,uint256 _age,string memory _gender,string memory _height,uint256 _weight,string memory _patient_address,uint256 _phone_no,string memory _email_id,uint256 _date)public {
    
        p.patient_name=_patient_name;
        p.age=_age;
        p.gender=_gender;
        p.height=_height;
        p.weight=_weight;
        p.patient_address=_patient_address;
        p.phone_no=_phone_no;
        p.email_id=_email_id;
        p.date=_date;
         
        patientlist[patient_id] = p;
        }
         
         
     /**
     * @dev Store attendant details
     * @param patient_id patient id
     * @param _attendant_name name of attendant
     * @param _attendant_relation relation to patient
     * @param _attendant_phn_no phone no
     * */
     function store_attendant_details(uint256 patient_id,string memory _attendant_name,string memory _attendant_relation, uint256 _attendant_phn_no)public {
         
         a.patient_id = patient_id;
         a.attendant_name=_attendant_name;
         a.attendant_relation=_attendant_relation;
         a.attendant_phn_no=_attendant_phn_no;
         
         attendantlist[patient_id] = a;
     }
     
     
     /**
     * @dev Retreive patient details
     * @param patient_id patient id
     * */
    function retreive_patient_details(uint256 patient_id) public view returns (string memory,uint256,string memory,string memory,uint256,string memory,uint256,string memory,uint256){
         patient memory P = patientlist[patient_id];
         
     return (P.patient_name,P.age,P.gender,P.height,P.weight,P.patient_address,P.phone_no,P.email_id,P.date);
    
     }
     
     
     /**
     * @dev Retreive attendant details
     * @param patient_id patient id
     * */
    function retreive_attendant_details(uint256 patient_id) public view returns (string memory,string memory,uint256){
        attendant memory A = attendantlist[patient_id];
        return (A.attendant_name,A.attendant_relation,A.attendant_phn_no);
     
     }
}