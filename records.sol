pragma solidity >0.4.22 <0.7.0;

//SPDX-License-Identifier: AML

/**
 * @title Medical records
 * @dev Store & retreive patient details in Medicalrecords
 */

contract Records {
    mapping(uint256 => insurance) insurancelist;
    mapping(uint256 => history) patienthistory;
    mapping(uint256 => past) pasthistory;
    mapping(uint256 => diag) diagnosis;
    mapping(uint256 => treat) treatment;
    mapping(uint256 => prev) prevdates;
    mapping(uint256 => patient) patientlist;

    struct patient {
        uint256 patient_id;
    }
    patient p;

    struct prev {
        uint256 patient_id;
        string previous;
    }
    prev pr;

    struct insurance {
        uint256 patient_id;
        string applicable;
        uint64 policy_no;
        string insurer;
        string policy_type;
        string policy_limit;
    }
    insurance i;

    struct history {
        uint256 patient_id;
        string complaints;
        string duration;
    }
    history hi;

    struct past {
        uint256 patient_id;
        string family_history;
        string personal_history;
        string drug_history;
    }
    past pa;

    struct diag {
        uint256 patient_id;
        string diag_summary;
        string prescription;
    }
    diag d;
    struct treat {
        string treatment;
        string date_treatment;
        uint256 doctor_id;
        uint256 hospital_id;
        string discharge;
        string follow_up;
    }
    treat tr;
    address owner;

    /**
     * @dev Store previous dates of records updated
     * @param patient_id patient id
     * @param _previous previous dates of records updated
     */
    function previous_dates(uint256 patient_id, string memory _previous)
        public
    {
        pr.previous = _previous;

        prevdates[patient_id] = pr;
    }

    /**
     * @dev Retreive previous dates of records updated
     * @param patient_id patient id
     * */
    function get_previous_dates(uint256 patient_id)
        public
        view
        returns (string memory)
    {
        prev memory PR = prevdates[patient_id];
        return (PR.previous);
    }

    /**
     * @dev Store insurance details
     * @param patient_id patient id
     * @param _applicable is applicable or not
     * @param _policy_no policy number
     * @param _insurer name of insurer
     * @param _policy_type type of policy
     * @param _policy_limit limit of policy
     */
    function insurance_details(
        uint256 patient_id,
        string memory _applicable,
        uint64 _policy_no,
        string memory _insurer,
        string memory _policy_type,
        string memory _policy_limit
    ) public {
        i.applicable = _applicable;
        i.policy_no = _policy_no;
        i.insurer = _insurer;
        i.policy_type = _policy_type;
        i.policy_limit = _policy_limit;

        insurancelist[patient_id] = i;
    }

    /**
     * @dev Retreive insurance details
     * @param patient_id patient id
     * */
    function get_insurance(uint256 patient_id)
        public
        view
        returns (
            string memory,
            uint64,
            string memory,
            string memory,
            string memory
        )
    {
        insurance memory I = insurancelist[patient_id];
        return (
            I.applicable,
            I.policy_no,
            I.insurer,
            I.policy_type,
            I.policy_limit
        );
    }

    /**
     * @dev Store present illness details
     * @param patient_id patient id
     * @param _complaints complaints
     * @param _duration duration of the complaint
     */
    function present_illness(
        uint256 patient_id,
        string memory _complaints,
        string memory _duration
    ) public {
        hi.complaints = _complaints;
        hi.duration = _duration;

        patienthistory[patient_id] = hi;
    }

    /**
     * @dev Retreive present illness details
     * @param patient_id patient id
     * */
    function get_present_illness(uint256 patient_id)
        public
        view
        returns (string memory, string memory)
    {
        history memory HI = patienthistory[patient_id];
        return (HI.complaints, HI.duration);
    }

    /**
     * @dev Store past illness details
     * @param patient_id patient id
     * @param _family_history history of family illness
     * @param _personal_history history of personal illness
     * @param _drug_history history of drug usage
     */
    function past_illness(
        uint256 patient_id,
        string memory _family_history,
        string memory _personal_history,
        string memory _drug_history
    ) public {
        pa.family_history = _family_history;
        pa.personal_history = _personal_history;
        pa.drug_history = _drug_history;

        pasthistory[patient_id] = pa;
    }

    /**
     * @dev Retreive past illness details
     * @param patient_id patient id
     * */
    function get_past_illness(uint256 patient_id)
        public
        view
        returns (
            string memory,
            string memory,
            string memory
        )
    {
        past memory PA = pasthistory[patient_id];
        return (PA.family_history, PA.personal_history, PA.drug_history);
    }

    /**
     * @dev Store functional diagnosis details
     * @param patient_id patient id
     * @param _diag_summary summary of diagnosis
     * @param _prescription prescription
     */
    function func_diagnosis(
        uint256 patient_id,
        string memory _diag_summary,
        string memory _prescription
    ) public {
        d.diag_summary = _diag_summary;
        d.prescription = _prescription;

        diagnosis[patient_id] = d;
    }

    /**
     * @dev Retreive functional diagnosis details
     * @param patient_id patient id
     * */
    function get_func_diagnosis(uint256 patient_id)
        public
        view
        returns (string memory, string memory)
    {
        diag memory D = diagnosis[patient_id];

        return (D.diag_summary, D.prescription);
    }

    /**
     * @dev Store treatment summary details
     * @param patient_id patient patient id
     * @param _treatment treatment
     * @param _date_treatment date of treatment
     * @param _doctor_id id of doctor treated
     * @param _hospital_id id of hospital
     * @param _discharge date of discharge
     * @param _follow_up date for follow up
     * */
    function treatment_summary(
        uint256 patient_id,
        string memory _treatment,
        string memory _date_treatment,
        uint256 _doctor_id,
        uint256 _hospital_id,
        string memory _discharge,
        string memory _follow_up
    ) public {
        tr.treatment = _treatment;
        tr.date_treatment = _date_treatment;
        tr.doctor_id = _doctor_id;
        tr.hospital_id = _hospital_id;
        tr.discharge = _discharge;
        tr.follow_up = _follow_up;

        treatment[patient_id] = tr;
    }

    /**
     * @dev Retreive treatment summary details
     * @param patient_id patient id
     * */
    function get_treatment_summary(uint256 patient_id)
        public
        view
        returns (
            string memory,
            string memory,
            uint256,
            uint256,
            string memory,
            string memory
        )
    {
        treat memory TR = treatment[patient_id];

        return (
            TR.treatment,
            TR.date_treatment,
            TR.doctor_id,
            TR.hospital_id,
            TR.discharge,
            TR.follow_up
        );
    }
}
