import 'package:flutter/material.dart';
import 'package:sample_app/screens/forms/widgets/step_2/PinCodeField.dart';
import 'package:sample_app/screens/forms/widgets/step_2/ChildrenStatus.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CovidDurationOfStayWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CovidHistoryDropdownWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CovidModeOfRxDropdownWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CovidPostSymptomsWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CovidSeverityDropdownWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/EpilepsyDurationWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/EpilepsyHistoryWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/EpilepsyRxRegimenWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/HypothyroidismDurationWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/HypothyroidismHistoryWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/HypothyroidismLT4DoseWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/OtherComorbiditiesWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/PcosHistoryWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/PriorHOCABGPCIWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/PriorHOCSWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/cancer_history_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/cancer_site_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_dlp.dart';
import 'package:sample_app/screens/forms/widgets/step_3/IHDHistoryWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/NavigationButtons.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CKDDurationWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/CurrentAddressField.dart';
import 'package:sample_app/screens/forms/widgets/step_2/LMPDatePickerWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/ObstetricScoreField.dart';
import 'package:sample_app/screens/forms/widgets/step_3/DurationofCKDWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/GenderDropdownWidget.dart'
    as gender_widget;
import 'package:sample_app/screens/forms/widgets/step_3/dyslipidemia_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/monthly_income_field.dart';
import 'package:sample_app/screens/forms/widgets/step_3/copd_duration_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/PermanentAddressField.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_ba_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/history_of_ckd_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/psychiatric_illness_duration_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/psychiatric_illness_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/psychiatric_rx_regimen_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/systemic_hypertension.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_ihd_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/ResidentialAreaDropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_3/bronchial_asthma_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/type_of_diabetes_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/MenopausalStatusDropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_3/diabetes_mellitus_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/LivingArrangementDropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_2/Phone_Number_Field_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/copd_dropdown_widget.dart.dart';
import 'package:sample_app/screens/forms/widgets/step_3/NativeKidneyDiseaseWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/current_rx_regimen_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/ParticipantOccupationField.dart';
import 'package:sample_app/screens/forms/widgets/step_2/highest_education_dropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_3/CurrentRxRegimenCOPDWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_diabetes_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/MaritalStatusDropdownWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/DurationOfBreastfeedingField.dart';
import 'package:sample_app/screens/forms/widgets/step_3/current_rx_regimen_ba_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_2/age_of_first_childbirth_field.dart';
import 'package:sample_app/screens/forms/widgets/step_3/current_rx_regimen_dlp_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/current_rx_regimen_htn_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_dyslipidemia_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_3/duration_of_hypertension_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_4/family_history_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/AlcoholWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/NicotineDependenceWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/OralTobaccoFrequencyWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/OralTobaccoWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/SmokingFrequencyWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/SmokingPackYearWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_5/SmokingWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_6/MentalWellnessWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_6/NutritionalDataWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_6/OSASScreeningWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_6/PhysicalActivityWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_6/SleepWellnessWidget.dart';
import 'package:sample_app/screens/forms/widgets/step_7/frailty_assessment_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_7/health_related_qol_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Blood%20Pressure%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Cyanosis%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Hair%20Assessment%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Icterus%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Nail%20Assessment%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Pallor%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Pulse%20Rate%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Respiratory%20Rate%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/SpO2%20Widget%20.dart';
import 'package:sample_app/screens/forms/widgets/step_8/Temperature%20Widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/bmi_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/clubbing_dropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_8/height_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/lymphadenopathy_dropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_8/pedal_edema_dropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_8/skin_assessment_widget.dart';
import 'package:sample_app/screens/forms/widgets/step_8/thyromegaly_dropdown.dart';
import 'package:sample_app/screens/forms/widgets/step_8/weight_widget.dart';

void main() {
  runApp(MaterialApp(
    home: MultiStepForm(),
  ));
}

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  int _currentStep = 0;

  final _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _dobController = TextEditingController();
  final _phoneController = TextEditingController();
  final TextEditingController _monthlyIncomeController =
      TextEditingController();
  final TextEditingController _lmpController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final _obstetricScoreController = TextEditingController();
  final _ageOfFirstChildbirthController = TextEditingController();
  final _durationOfBreastfeedingController = TextEditingController();
  final _numberOfChildrenController = TextEditingController();
  final TextEditingController _currentAddressController =
      TextEditingController();
  final TextEditingController _currentPinCodeController =
      TextEditingController(); //pincode
  final TextEditingController _permanentAddressController =
      TextEditingController();

  String? _selectedMaritalStatus = 'Single';
  String? _selectedHighestEducation; // Store selected highest education
  late final String? selectedMaritalStatus;
  final TextEditingController lmpController = TextEditingController();
  String _selectedOccupation = ''; // Initialize with a default empty value
  String _selectedLivingArrangement = ''; // Initialize with a default value
  String _selectedResidentialArea = '';
  // Gender, Menopausal, and LMP
  String? currentRegimen; //step3
  String? _selectedGender = 'Male';
  String? _selectedMenopausalStatus;
  String? diabetesHistory; //step3
  String? diabetesType; //step3
  String? diabetesDuration; //step3
  String? systemicHypertension; //step3
  final TextEditingController durationController = TextEditingController();
  final List<String> selectedRegimenOptions = []; // Stores selected regimens
  String? dyslipidemiaHistory; // step3
  final TextEditingController dyslipidemiaDurationController =
      TextEditingController();
  List<String> currentRxRegimenDLP = [];
  bool isCKDHistoryRequired = true; // Flag to show/hide CKD history dropdown
  String selectedCKDHistory =
      ''; // Variable to store the selected CKD history option
  String? ckdHistory = 'No'; // Default value for CKD history
  bool showCKDDurationInput = false; // Flag to show CKD duration input
  TextEditingController ckdDurationController = TextEditingController();
  String? selectedNKD = ''; // Selected NKD value
  bool showNKDInput = false; // Flag to show NKD input
  String? selectedCOPDOption; // To store the selected COPD option
  String? _copdStatus; // State variable to store COPD status
  final TextEditingController copddurationController =
      TextEditingController(); // Controller for duration input
  List<String> _selectedTreatments = []; // List to store selected treatments
  String? bronchialAsthma; // Store the selected value
  String? durationOfBA; // Stores the duration of BA
  bool isBA = false;
  List<String> selectedRxRegimen = [];
  String? isIHDSelected; // Holds the selected option for IHD history (Yes/No)
  String ihdDuration = ''; // To store the entered duration of IHD
  String? priorHOCS; // To store the selected ACS history (Yes/No)
  String? priorHOCABGPCI; // To store the selected CABG/PCI history (Yes/No)
  String? selectedHypothyroidismValue;
  String? hypothyroidismDuration; // Store the duration of hypothyroidism
  String? hypothyroidismLT4Dose; // Store the LT4 dose input
  String? epilepsyHistory; // Store the selected value for epilepsy history
  final TextEditingController epilepsyDurationController =
      TextEditingController(); // Controller for epilepsy duration
  List<String> selectedEpilepsyRxRegimen = [];
  String? psychiatricIllnessHistory;
  final TextEditingController psychiatricIllnessDurationController =
      TextEditingController(); // Controller for duration input
  List<String> psychiatricRxRegimen = []; // Store the list of regimens
  String? cancerHistory;
  String cancerSite = "";
  String? priorCovidHistory; // Stores the selected option (Yes/No)
  String? covidSeverity; // Stores the selected severity (Mild/Moderate/Severe)
  String? modeOfRx; // Stores the selected mode (OP/IP/ICU)
  int? durationOfStay; // Stores the duration of stay in days
  List<String> postCovidSymptoms = []; // List of post-COVID symptoms
  String? pcosHistory; // PCOS (Yes/No)
  List<String> otherComorbidities = []; // List of other comorbidities
  final Map<String, String?> _familyHistoryData = {}; //step4
  String? _packYear;
  String? _smokingStatus; // To store the selected smoking status
  String? _smokingFrequency; // To store the selected smoking frequency
  Map<String, int>? _ftndScores; // To store FTND scores (assuming it's a map)
  String? _selectedAlcoholHistory;
  String? _alcoholStatus;
  String? alcoholFrequency;
  final Map<int, String?> alcoholDependenceAnswers = {};
  String? tobaccoStatus;
  String? tobaccoFrequency;
  String? dietaryPattern;
  String? physicalActivity;
  Map<String, String?> mentalWellnessData = {};
  Map<String, String?> sleepWellnessData = {};
  Map<String, String?> osasScreeningData = {};
  Map<String, String?> qolData = {};
  Map<String, String?> frailtyData = {};
  String? pallorStatus;
  String? clubbingStatus;
  String? lymphadenopathyStatus;
  String? pedalEdemaStatus;
  String? thyromegalyStatus;
  String skinCondition = "Normal";
  String abnormalDetails = "";
  String icterusStatus = "No"; // Default value
String hairAssessment = "Normal";
  String hairDetails = "";
  String nailAssessment = "Normal";
  String nailDetails = "";
 double height = 0.0;
  double weight = 0.0;
  
  Widget _buildTextField(String labelText, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle:
            TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
        hintText: 'Enter $labelText',
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: Icon(Icons.person, color: Colors.teal),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
    );
  }

  //step3
  // Callback to handle CKD history selection
  void onCKDHistoryChanged(String newValue) {
    setState(() {
      ckdHistory = newValue;
      showCKDDurationInput =
          newValue == 'Yes'; // Show duration input if CKD is Yes
      showNKDInput = newValue == 'Yes'; // Show NKD dropdown if CKD is Yes
    });
  }

  // Callback to handle NKD selection
  void onNKDSelectionChanged(String newValue) {
    setState(() {
      selectedNKD = newValue; // Update the selected NKD value
    });
  }

  // This method will be called when the user selects an option for COPD
  void onCOPDSelectionChanged(String value) {
    setState(() {
      selectedCOPDOption = value; // Save the selected value
    });
  }

  @override
  void dispose() {
    copddurationController.dispose();
    super.dispose();
  }

  void handleRxRegimenChange(List<String> selectedOptions) {
    setState(() {
      selectedRxRegimen = selectedOptions;
    });
  }

  void _updateFamilyHistory(Map<String, String?> data) {
    setState(() {
      _familyHistoryData.addAll(data);
    });
  }

  // Go to the next step
  void _nextStep() {
    setState(() {
      if (_currentStep < 7) {
        _currentStep++;
        print('Current Step: $_currentStep'); // Debug print
      } else {
        // Show a success dialog when finished
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text("Form Submitted"),
            content: Text("Your form has been successfully submitted."),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Close"),
              ),
            ],
          ),
        );
      }
    });
  }

  // Go back to the previous step
  void _previousStep() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep--;
        print('Current Step: $_currentStep'); // Debug print
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multi-Step Form"),
          automaticallyImplyLeading: false, // Removes the back arrow
        ),
        body: SingleChildScrollView(
            child: Center(
                child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: 600), // Responsive width
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      if (_currentStep == 0) ...[
                                        // Step 1: Participant Info
                                        Icon(Icons.person,
                                            color: Colors.blue, size: 60),
                                        SizedBox(height: 20),
                                        Text(
                                          "Step 1: Participant Info",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 16),
                                        _buildTextField(
                                            'Enter your name', _nameController),
                                        SizedBox(height: 16),
                                        _buildTextField('Enter your email',
                                            _emailController),
                                        SizedBox(
                                            height:
                                                20), // Add space for better layout
                                        // Step 1 Next Button
                                        ElevatedButton(
                                          onPressed: _nextStep,
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue),
                                          child: Text("Next"),
                                        ),
                                      ],
                                      if (_currentStep == 1) ...[
                                        // Step 2: Demographic and Socio-Economic Information
                                        Text(
                                            "Step 2: Demographic and Socio-Economic Information",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        SizedBox(height: 20),
                                        // Date of Birth Field
                                        TextFormField(
                                          controller: _dobController,
                                          decoration: InputDecoration(
                                            labelText: "Date of Birth",
                                            labelStyle: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.w500),
                                            hintText: 'Tap to select date',
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400]),
                                            prefixIcon: Icon(
                                                Icons.calendar_today,
                                                color: Colors.teal),
                                            filled: true,
                                            fillColor: Colors.grey[100],
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2),
                                            ),
                                          ),
                                          onTap: () async {
                                            DateTime? picked =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1900),
                                              lastDate: DateTime.now(),
                                            );
                                            if (picked != null) {
                                              setState(() {
                                                DateTime currentDate =
                                                    DateTime.now();
                                                int age = currentDate.year -
                                                    picked.year;
                                                if (currentDate.month <
                                                        picked.month ||
                                                    (currentDate.month ==
                                                            picked.month &&
                                                        currentDate.day <
                                                            picked.day)) {
                                                  age--;
                                                }
                                                _ageController.text = age
                                                    .toString(); // Update age field
                                                _dobController.text = picked
                                                    .toString()
                                                    .substring(
                                                        0, 10); // Format date
                                              });
                                            }
                                          },
                                        ),
                                        SizedBox(height: 16),
                                        // Phone Number Field Widget
                                        PhoneNumberFieldWidget(
                                            phoneController: _phoneController),
                                        SizedBox(height: 16),
                                        // Age Field (Read-only)
                                        TextFormField(
                                          controller: _ageController,
                                          decoration: InputDecoration(
                                            labelText: "Age",
                                            labelStyle: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.w500),
                                            hintText:
                                                'Age will be calculated automatically',
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400]),
                                            prefixIcon: Icon(
                                                Icons.accessibility,
                                                color: Colors.teal),
                                            filled: true,
                                            fillColor: Colors.grey[100],
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide(
                                                  color: Colors.blueAccent,
                                                  width: 2),
                                            ),
                                          ),
                                          enabled: false,
                                          readOnly: true,
                                        ),
                                        SizedBox(height: 16),
                                        // Gender Dropdown
                                        gender_widget.GenderDropdownWidget(
                                          selectedGender: _selectedGender,
                                          onGenderChanged: (newValue) {
                                            setState(() {
                                              _selectedGender = newValue;
                                              _selectedMenopausalStatus =
                                                  null; // Reset Menopausal Status
                                              _lmpController
                                                  .clear(); // Clear LMP
                                            });
                                          },
                                          lmpController: _lmpController,
                                          selectedMenopausalStatus:
                                              _selectedMenopausalStatus,
                                          onMenopausalStatusChanged:
                                              (newValue) {
                                            setState(() {
                                              _selectedMenopausalStatus =
                                                  newValue;
                                              _lmpController
                                                  .clear(); // Clear LMP if Menopausal Status is changed
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Menopausal Status Dropdown
                                        if (_selectedGender == 'Female') ...[
                                          MenopausalStatusDropdown(
                                            selectedMenopausalStatus:
                                                _selectedMenopausalStatus,
                                            onMenopausalStatusChanged:
                                                (newValue) {
                                              setState(() {
                                                _selectedMenopausalStatus =
                                                    newValue;
                                                _lmpController
                                                    .clear(); // Clear LMP if Menopausal Status is changed
                                              });
                                            },
                                          ),
                                          SizedBox(height: 16),
                                        ],

                                        // LMP Date Picker
                                        if (_selectedMenopausalStatus ==
                                                'Pre-Menopausal' ||
                                            _selectedMenopausalStatus ==
                                                'Peri-Menopausal') ...[
                                          LMPDatePickerWidget(
                                            lmpController: _lmpController,
                                            selectedMenopausalStatus:
                                                _selectedMenopausalStatus,
                                          ),
                                          SizedBox(height: 16),

                                          // Obstetric Score Field
                                          ObstetricScoreField(
                                            controller:
                                                _obstetricScoreController,
                                            selectedGender: _selectedGender,
                                            selectedMaritalStatus:
                                                _selectedMaritalStatus,
                                          ),
                                          SizedBox(height: 16),
                                        ],

                                        // Marital Status Dropdown
                                        MaritalStatusDropdownWidget(
                                          selectedMaritalStatus:
                                              _selectedMaritalStatus ??
                                                  'Single', // Default to 'Single'
                                          onMaritalStatusChanged:
                                              (String? newStatus) {
                                            setState(() {
                                              _selectedMaritalStatus =
                                                  newStatus!;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Age of 1st Childbirth Field
                                        AgeOfFirstChildbirthField(
                                            controller:
                                                _ageOfFirstChildbirthController),

                                        // Duration of Breastfeeding Field (only if female is selected)
                                        if (_selectedGender == 'Female')
                                          DurationOfBreastfeedingField(
                                              controller:
                                                  _durationOfBreastfeedingController),
                                        SizedBox(height: 16),

                                        // Children Status Field (only if male is selected and marital status is not 'Single')
                                        if (_selectedGender == 'Male' &&
                                            _selectedMaritalStatus != 'Single')
                                          ChildrenStatusField(
                                              controller:
                                                  _numberOfChildrenController),
                                        SizedBox(height: 16),

                                        // Highest Education Field
                                        HighestEducationField(
                                          selectedHighestEducation:
                                              _selectedHighestEducation, // Pass the variable
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              _selectedHighestEducation =
                                                  newValue; // Update the state
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Participant Occupation Field
                                        ParticipantOccupationField(
                                          selectedOccupation:
                                              _selectedOccupation,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              if (newValue != null) {
                                                _selectedOccupation =
                                                    newValue; // Safely update selectedOccupation
                                              }
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Monthly Income Field
                                        MonthlyIncomeField(
                                            controller:
                                                _monthlyIncomeController),
                                        SizedBox(height: 16),

                                        // Living Arrangement Dropdown
                                        LivingArrangementDropdown(
                                          selectedLivingArrangement:
                                              _selectedLivingArrangement,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              if (newValue != null) {
                                                _selectedLivingArrangement =
                                                    newValue; // Update the value
                                              }
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Residential Area Dropdown
                                        ResidentialAreaDropdown(
                                          selectedResidentialArea:
                                              _selectedResidentialArea,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              _selectedResidentialArea =
                                                  newValue!;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 16),

                                        // Current Address Field
                                        CurrentAddressField(
                                            controller:
                                                _currentAddressController),
                                        SizedBox(height: 16),

                                        // Pin Code Field for Current Address
                                        PinCodeField(
                                          controller: _currentPinCodeController,
                                          label: 'Pin Code (Current Address)',
                                          hintText: 'Enter your pin code',
                                          emptyError: 'Pin code is required',
                                          lengthError:
                                              'Pin code must be 6 digits',
                                        ),
                                        SizedBox(height: 16),

                                        //PermanentAddressField
                                        PermanentAddressField(
                                            controller:
                                                _permanentAddressController), // Use the PermanentAddressField widget here
                                        SizedBox(height: 20),
                                        // Pin Code Field for Current Address
                                        PinCodeField(
                                          controller: _currentPinCodeController,
                                          label: 'Pin Code (Current Address)',
                                          hintText: 'Enter your pin code',
                                          emptyError: 'Pin code is required',
                                          lengthError:
                                              'Pin code must be 6 digits',
                                        ),
                                        SizedBox(height: 16),
                                        //NavigationButtons
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep > 0,
                                        ),
                                      ],
                                      if (_currentStep == 2) ...[
                                        // Step 3: Personal Medical History (Comorbid Illness)
                                        Text(
                                          "Step 3: Personal Medical History (Comorbid Illness)",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        DiabetesMellitusWidget(
                                            onSelectionChanged: (value) {
                                          setState(() {
                                            diabetesHistory = value;
                                            if (diabetesHistory != 'Yes') {
                                              diabetesType =
                                                  null; // Clear type if DM = No
                                            }
                                          });
                                        }),
                                        TypeOfDiabetesWidget(
                                          diabetesStatus: diabetesHistory,
                                          onTypeChanged: (value) {
                                            setState(() {
                                              diabetesType = value;
                                            });
                                          },
                                        ),
                                        DurationOfDiabetesWidget(
                                          diabetesStatus: diabetesHistory,
                                          onDurationChanged: (value) {
                                            setState(() {
                                              diabetesDuration = value;
                                            });
                                          },
                                        ),
                                        CurrentRxRegimenWidget(
                                          diabetesStatus: diabetesHistory,
                                          onRegimenChanged: (value) {
                                            setState(() {
                                              currentRegimen = value;
                                            });
                                          },
                                          showCOPDRegimenInput:
                                              true, // or false, depending on your condition
                                          selectedRegimens: [], // Empty list for selected regimens initially
                                        ),

                                        SystemicHypertensionWidget(
                                          onSelectionChanged: (value) {
                                            setState(() {
                                              systemicHypertension = value;
                                            });
                                          },
                                        ),
                                        DurationOfHypertensionWidget(
                                          showDurationInput:
                                              systemicHypertension == 'Yes',
                                          durationController:
                                              durationController,
                                        ),
                                        CurrentRxRegimenHTNWidget(
                                          showRegimenInput:
                                              systemicHypertension == 'Yes',
                                          onSelectionChanged:
                                              (selectedOptions) {
                                            setState(() {
                                              selectedRegimenOptions.clear();
                                              selectedRegimenOptions
                                                  .addAll(selectedOptions);
                                            });
                                          },
                                        ),
                                        DyslipidemiaWidget(
                                          onSelectionChanged: (value) {
                                            setState(() {
                                              dyslipidemiaHistory = value;
                                            });
                                          },
                                        ),
                                        DurationOfDyslipidemiaWidget(
                                          showDurationInput:
                                              dyslipidemiaHistory == 'Yes',
                                          durationController:
                                              dyslipidemiaDurationController,
                                        ),
                                        CurrentRxRegimenDLPWidget(
                                          showRegimenInput:
                                              dyslipidemiaHistory == 'Yes',
                                          onSelectionChanged:
                                              (selectedRegimens) {
                                            setState(() {
                                              currentRxRegimenDLP =
                                                  selectedRegimens;
                                            });
                                          },
                                        ),
                                        // CKD History Widget
                                        HistoryOfCKDWidget(
                                          showCKDInput:
                                              true, // Always show the CKD dropdown
                                          onSelectionChanged:
                                              onCKDHistoryChanged, // Pass the callback to handle CKD selection
                                        ),
                                        // CKD Duration Widget (if CKD is Yes)
                                        CKDDurationWidget(
                                          showCKDDurationInput:
                                              showCKDDurationInput,
                                          ckdDurationController:
                                              ckdDurationController,
                                        ),
                                        // NKD Type Widget (if CKD is Yes)
                                        NativeKidneyDiseaseWidget(
                                          showNKDInput: showNKDInput,
                                          onNKDSelectionChanged:
                                              onNKDSelectionChanged, // Pass the callback for NKD selection
                                        ),
                                        COPDDropdownWidget(
                                          selectedOption: _copdStatus,
                                          onOptionChanged: (value) {
                                            setState(() {
                                              _copdStatus = value;
                                            });
                                          },
                                        ),
                                        // COPD Duration Widget
                                        COPDDurationWidget(
                                          copdStatus:
                                              _copdStatus, // Pass the status
                                          copdDurationController:
                                              copddurationController, // Pass the controller
                                          onDurationChanged: (value) {
                                            print(
                                                'COPD Duration: $value'); // Log changes
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Current Rx Regimen COPD Widget
                                        CurrentRxRegimenCOPDWidget(
                                          copdStatus:
                                              _copdStatus, // Pass the COPD status
                                          onTreatmentChanged:
                                              (selectedTreatments) {
                                            setState(() {
                                              _selectedTreatments =
                                                  selectedTreatments; // Update the selected treatments
                                            });
                                            print(
                                                'Selected Treatments: $_selectedTreatments'); // Log selected treatments
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Bronchial Asthma Dropdown
                                        BronchialAsthmaWidget(
                                          onChanged: (value) {
                                            setState(() {
                                              bronchialAsthma = value;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Duration of BA (only if BA = Yes)
                                        DurationOfBAWidget(
                                          isBASelected:
                                              bronchialAsthma == "Yes",
                                          onChanged: (value) {
                                            durationOfBA = value;
                                            print(
                                                "Duration of BA: $durationOfBA"); // Debugging/logging
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Current Rx Regimen BA widget
                                        CurrentRxRegimenBAWidget(
                                          isBA: bronchialAsthma == "Yes",
                                          onChanged: (selectedOptions) {
                                            currentRegimen =
                                                selectedOptions as String?;
                                            print(
                                                "Selected Rx Regimen: $currentRegimen"); // Debugging/logging
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Include the IHDHistoryWidget
                                        IHDHistoryWidget(
                                          selectedValue: isIHDSelected,
                                          onChanged: (String? value) {
                                            setState(() {
                                              isIHDSelected =
                                                  value; // Update selected IHD history value
                                              if (isIHDSelected == "No") {
                                                ihdDuration =
                                                    ''; // Reset duration when "No"
                                              }
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        // Include the DurationOfIHDWidget (only visible if IHD history is "Yes")
                                        DurationOfIHDWidget(
                                          isIHDSelected: isIHDSelected ==
                                              "Yes", // Show if "Yes" is selected
                                          onChanged: (value) {
                                            setState(() {
                                              ihdDuration =
                                                  value; // Capture the entered duration
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        // Include the PriorHOCSWidget (only visible if IHD history is "Yes")
                                        PriorHOCSWidget(
                                          isIHDSelected: isIHDSelected ==
                                              "Yes", // Show if "Yes" is selected
                                          onChanged: (value) {
                                            setState(() {
                                              priorHOCS =
                                                  value; // Capture the selected ACS history
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        // Include the PriorHOCABGPCIWidget (only visible if IHD history is "Yes")
                                        PriorHOCABGPCIWidget(
                                          isIHDSelected: isIHDSelected ==
                                              "Yes", // Show if "Yes" is selected
                                          onChanged: (value) {
                                            setState(() {
                                              priorHOCABGPCI =
                                                  value; // Capture the selected CABG/PCI history
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        HypothyroidismHistoryWidget(
                                          selectedValue:
                                              selectedHypothyroidismValue,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedHypothyroidismValue =
                                                  value;
                                            });
                                          },
                                        ),
                                        // Show the Duration widget if Hypothyroidism = Yes
                                        HypothyroidismDurationWidget(
                                          isHypothyroidismSelected:
                                              selectedHypothyroidismValue ==
                                                  "Yes",
                                          onChanged: (value) {
                                            setState(() {
                                              hypothyroidismDuration = value;
                                            });
                                          },
                                        ),
                                        // Show the Last LT4 Dose widget if Hypothyroidism = Yes
                                        HypothyroidismLT4DoseWidget(
                                          isHypothyroidismSelected:
                                              selectedHypothyroidismValue ==
                                                  "Yes",
                                          onChanged: (value) {
                                            setState(() {
                                              hypothyroidismLT4Dose = value;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        // Epilepsy History widget
                                        EpilepsyHistoryWidget(
                                          selectedValue: epilepsyHistory,
                                          onChanged: (value) {
                                            setState(() {
                                              epilepsyHistory =
                                                  value; // Update the selected value
                                            });
                                          },
                                        ),

                                        // Epilepsy Duration widget (shown only if epilepsy = Yes)
                                        EpilepsyDurationWidget(
                                          showField: epilepsyHistory == "Yes",
                                          controller:
                                              epilepsyDurationController,
                                        ),
                                        // Current Rx Regimen for Epilepsy widget (shown only if epilepsy = Yes)
                                        EpilepsyRxRegimenWidget(
                                          showField: epilepsyHistory == "Yes",
                                          onSelectionChanged:
                                              (selectedOptions) {
                                            setState(() {
                                              selectedEpilepsyRxRegimen =
                                                  selectedOptions;
                                            });
                                          },
                                        ),
                                        // Psychiatric Illness History widget
                                        PsychiatricIllnessWidget(
                                          selectedValue:
                                              psychiatricIllnessHistory,
                                          onChanged: (value) {
                                            setState(() {
                                              psychiatricIllnessHistory =
                                                  value; // Update the selected value
                                            });
                                          },
                                        ),
                                        // Psychiatric Illness Duration widget (conditionally shown)
                                        PsychiatricIllnessDurationWidget(
                                          isPsychiatricIllnessYes:
                                              psychiatricIllnessHistory ==
                                                  "Yes",
                                          controller:
                                              psychiatricIllnessDurationController,
                                        ),
                                        const SizedBox(height: 16),
                                        // Psychiatric Rx Regimen widget (conditionally shown)
                                        PsychiatricRxRegimenWidget(
                                          isPsychiatricIllnessYes:
                                              psychiatricIllnessHistory ==
                                                  "Yes",
                                          initialRegimens: psychiatricRxRegimen,
                                          onUpdated: (updatedRegimens) {
                                            setState(() {
                                              psychiatricRxRegimen =
                                                  updatedRegimens; // Update regimens
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        CancerHistoryWidget(
                                          showField: true,
                                          onCancerChanged: (value) {
                                            setState(() {
                                              cancerHistory = value;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 16),
                                        CancerSiteWidget(
                                          showField: cancerHistory == "Yes",
                                          onSiteChanged: (value) {
                                            setState(() {
                                              cancerSite = value;
                                            });
                                          },
                                        ),
                                        // The COVID History Dropdown Widget
                                        CovidHistoryDropdownWidget(
                                          selectedOption:
                                              priorCovidHistory, // Pass the selected value
                                          onOptionChanged: (value) {
                                            setState(() {
                                              priorCovidHistory = value;
                                            });
                                          },
                                        ),
                                        // If COVID history is "Yes", show the Severity dropdown
                                        if (priorCovidHistory == 'Yes')
                                          CovidSeverityDropdownWidget(
                                            selectedSeverity:
                                                covidSeverity, // Value to be selected (Mild/Moderate/Severe)
                                            onSeverityChanged: (value) {
                                              setState(() {
                                                covidSeverity = value;
                                              });
                                            },
                                          ),
                                        // If COVID history is "Yes", show the Mode of Treatment dropdown
                                        if (priorCovidHistory == 'Yes')
                                          CovidModeOfRxDropdownWidget(
                                            selectedMode:
                                                modeOfRx, // Value to be selected (OP/IP/ICU)
                                            onModeChanged: (value) {
                                              setState(() {
                                                modeOfRx = value;
                                              });
                                            },
                                          ),
                                        // If Mode is IP or ICU, show the Duration of Stay widget
                                        if (modeOfRx == 'IP' ||
                                            modeOfRx == 'ICU')
                                          CovidDurationOfStayWidget(
                                            durationOfStay:
                                                durationOfStay, // Value for the number of days
                                            onDurationChanged: (value) {
                                              setState(() {
                                                durationOfStay = value;
                                              });
                                            },
                                          ),

                                        // If COVID history is "Yes", show the Post-COVID Symptoms widget
                                        if (priorCovidHistory == 'Yes')
                                          CovidPostSymptomsWidget(
                                            symptoms: postCovidSymptoms,
                                            onSymptomsChanged: (value) {
                                              setState(() {
                                                postCovidSymptoms = value;
                                              });
                                            },
                                          ),
                                        // If Gender is Female, show PCOS widget
                                        if (_selectedGender == 'Female')
                                          PcosHistoryWidget(
                                            selectedOption: pcosHistory,
                                            onOptionChanged: (value) {
                                              setState(() {
                                                pcosHistory = value;
                                              });
                                            },
                                          ),
                                        const SizedBox(height: 20),

                                        // Other Comorbidities Widget
                                        OtherComorbiditiesWidget(
                                          comorbidities: otherComorbidities,
                                          onComorbiditiesChanged: (value) {
                                            setState(() {
                                              otherComorbidities = value;
                                            });
                                          },
                                        ),
                                        //NavigationButtons
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep > 0,
                                        ),
                                      ],
                                      if (_currentStep == 3) ...[
                                        // Step 4: Family History of Medical Illness
                                        Text(
                                          "Step 4: Family History of Medical Illness",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        FamilyHistoryWidget(
                                          onFamilyHistoryChanged:
                                              _updateFamilyHistory,
                                        ),
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep >
                                              0, // Show the "Back" button only after Step 1
                                        )
                                      ],
                                      if (_currentStep == 4) ...[
                                        // Step 5: Addiction/Habitual Data
                                        Text(
                                          "Step 5: Addiction/Habitual Data",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SmokingWidget(
                                          onSmokingStatusChanged: (value) {
                                            setState(() {
                                              _smokingStatus = value;
                                            });
                                          },
                                        ),
                                        SmokingPackYearWidget(
                                          smokingStatus:
                                              _smokingStatus, // Get the smoking status (Current/Former)
                                          onPackYearChanged: (value) {
                                            setState(() {
                                              _packYear =
                                                  value; // Store the pack year value here
                                            });
                                          },
                                        ), // Smoking Frequency Widget
                                        SmokingFrequencyWidget(
                                          smokingStatus: _smokingStatus,
                                          onFrequencyChanged: (frequency) {
                                            setState(() {
                                              _smokingFrequency = frequency;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),

                                        // Nicotine Dependence Widget (Only show if frequency is Daily)
                                        if (_smokingFrequency == 'Daily')
                                          NicotineDependenceWidget(
                                            smokingFrequency: _smokingFrequency,
                                            onFTNDChanged: (ftndScores) {
                                              setState(() {
                                                _ftndScores = ftndScores;
                                              });
                                            },
                                          ),
                                        AlcoholWidget(
                                          onAlcoholStatusChanged:
                                              (String? status) {
                                            setState(() {
                                              _alcoholStatus = status;
                                            });
                                          },
                                          onAlcoholDependenceAnswerChanged:
                                              (int questionIndex,
                                                  String? answer) {
                                            setState(() {
                                              alcoholDependenceAnswers[
                                                  questionIndex] = answer;
                                            });
                                          },
                                          onAlcoholFrequencyChanged:
                                              (String? frequency) {
                                            // New frequency handler
                                            setState(() {
                                              alcoholFrequency = frequency;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Adding OralTobaccoWidget to the form
                                        OralTobaccoWidget(
                                          onTobaccoStatusChanged:
                                              (String? status) {
                                            setState(() {
                                              tobaccoStatus = status;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        // Show OralTobaccoFrequencyWidget if the tobacco status is 'Current'
                                        if (tobaccoStatus == 'Current')
                                          OralTobaccoFrequencyWidget(
                                            onFrequencyChanged:
                                                (String? frequency) {
                                              setState(() {
                                                tobaccoFrequency = frequency;
                                              });
                                            },
                                            selectedFrequency: tobaccoFrequency,
                                          ),
                                        const SizedBox(height: 20),
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep >
                                              0, // Show the "Back" button only after Step 1
                                        )
                                      ],
                                      if (_currentStep == 5) ...[
                                        // Step 6: Lifestyle Wellness Data
                                        Text(
                                          "Step 6: Lifestyle Wellness Data",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        NutritionalDataWidget(
                                          onDietaryPatternChanged:
                                              (String? pattern) {
                                            setState(() {
                                              dietaryPattern = pattern;
                                            });
                                          },
                                        ),
                                        PhysicalActivityWidget(
                                          onPhysicalActivityChanged:
                                              (String? activity) {
                                            setState(() {
                                              physicalActivity = activity;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        MentalWellnessWidget(
                                          onMentalWellnessChanged:
                                              (Map<String, String?> data) {
                                            setState(() {
                                              mentalWellnessData = data;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        SleepWellnessWidget(
                                          onSleepWellnessChanged:
                                              (Map<String, String?> data) {
                                            setState(() {
                                              sleepWellnessData = data;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        OSASScreeningWidget(
                                          onOSASScreeningChanged:
                                              (Map<String, String?> data) {
                                            setState(() {
                                              osasScreeningData = data;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep >
                                              0, // Show the "Back" button only after Step 1
                                        )
                                      ],
                                      if (_currentStep == 6) ...[
                                        // Step 7: Quality of Life Assessment
                                        Text(
                                          "Step 7: Quality of Life Assessment",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        HealthRelatedQOLWidget(
                                          onQOLChanged:
                                              (Map<String, String?> data) {
                                            setState(() {
                                              qolData = data;
                                            });
                                          },
                                        ),
                                        FrailtyAssessmentWidget(
                                          onFrailtyChanged:
                                              (Map<String, String?> data) {
                                            setState(() {
                                              frailtyData = data;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep >
                                              0, // Show the "Back" button only after Step 1
                                        )
                                      ],
                                      if (_currentStep == 7) ...[
                                        // Step 8: Clinical Examination Data
                                        Text(
                                          "Step 8: Clinical Examination Data",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        PulseRateWidget(),
                                        BloodPressureWidget(),
                                        RespiratoryRateWidget(),
                                        SpO2Widget(),
                                        TemperatureWidget(),
                                        PallorWidget(
                                          onChanged: (value) {
                                            setState(() {
                                              pallorStatus = value;
                                            });
                                          },
                                        ),
                                        IcterusWidget(
                                          onChanged: (value) {
                                            print(
                                                "Icterus: $value"); // Handle value change
                                          },
                                        ),
                                        CyanosisWidget(
                                          onChanged: (value) {
                                            print(
                                                "Cyanosis: $value"); // Handle value change
                                          },
                                        ),
                                        ClubbingDropdownWidget(
                                          selectedValue: clubbingStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              clubbingStatus = value;
                                            });
                                          },
                                        ),
                                        LymphadenopathyDropdownWidget(
                                          selectedValue: lymphadenopathyStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              lymphadenopathyStatus = value;
                                            });
                                          },
                                        ),
                                        PedalEdemaDropdownWidget(
                                          selectedValue: pedalEdemaStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              pedalEdemaStatus = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 20),
                                        ThyromegalyDropdownWidget(
                                          selectedValue: thyromegalyStatus,
                                          onChanged: (value) {
                                            setState(() {
                                              thyromegalyStatus = value;
                                            });
                                          },
                                        ),
                                        SkinAssessmentWidget(
                                          onChanged: (condition, details) {
                                            setState(() {
                                              skinCondition = condition;
                                              abnormalDetails = details;
                                            });
                                          },
                                        ),
                                        HairAssessmentWidget(
                                          onChanged: (assessment, details) {
                                            setState(() {
                                              hairAssessment = assessment;
                                              hairDetails = details;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        NailAssessmentWidget(
                                          onChanged: (assessment, details) {
                                            setState(() {
                                              nailAssessment = assessment;
                                              nailDetails = details;
                                            });
                                          },
                                        ),
                                         HeightWidget(
                                          onChanged: (newHeight) {
                                            setState(() {
                                              height = newHeight;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        WeightWidget(
                                          onChanged: (newWeight) {
                                            setState(() {
                                              weight = newWeight;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 20),
                                        BMIWidget(
                                            height: height, weight: weight),
                                        NavigationButtons(
                                          onPrevious: _previousStep,
                                          onNext: _nextStep,
                                          isBackVisible: _currentStep >
                                              0, // Show the "Back" button only after Step 1
                                        )
                                      ]
                                    ]))))))));
  }
}
