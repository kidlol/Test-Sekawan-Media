*** Settings ***
Library    SeleniumLibrary
Library    Process
Library    OperatingSystem

*** Variables ***
${url_test}            https://aps-rejanglebong.skwn.dev/dev

*** Keywords ***
Login Candidat APS
    Open Browser    ${url_test}    chrome
    Maximize Browser Window
    Sleep    5
    Input Text    id:username    candidat
    Input Password    id:password    password123
    Sleep    3
    Click Button    id:kt_login_signin_submit
    Wait For Condition    return document.readyState == "complete"
    # Create File    D:/Kerja/Belajar Robot Framework/Test Sekawan Media/Laporan Hasil Testing Automation.txt    mencoba hasil automation

Pencarian Data dengan Field Pencarian
    Wait Until Element Is Enabled    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Click Element    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    5
    Input Text    id:table-inputpemilih_dtSearch    1234*
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    ${EMPTY}
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    1111
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    Nama Saya
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    ${EMPTY}
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    curup tes
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    ${EMPTY}
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    Pemilih
    Sleep    3
    Input Text    id:table-inputpemilih_dtSearch    ${EMPTY}
    Sleep    3

Filter Data dengan Fitur Filter
    Wait Until Element Is Enabled    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Click Element    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Wait Until Element Is Enabled    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[1]/div/div[2]
    Click Element    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[1]/div/div[2]
    Sleep    5
    Wait Until Element Is Enabled    id:select2-filter_provinsi_id-container
    Click Element    id:select2-filter_provinsi_id-container
    Click Element    xpath://*[@id="filter_provinsi_id"]/option[text()='Maluku']
    Click Element    id:select2-filter_provinsi_id-container
    Wait Until Element Is Enabled    id:select2-filter_kota_id-container
    Click Element    id:select2-filter_kota_id-container
    Click Element    xpath://*[@id="filter_kota_id"]/option[text()='Ambon']
    Click Element    id:select2-filter_kota_id-container
    Wait Until Element Is Enabled    id:select2-filter_kecamatan_id-container
    Click Element    id:select2-filter_kecamatan_id-container
    Click Element    xpath://*[@id="filter_kecamatan_id"]/option[text()='Manggarai']
    Click Element    id:select2-filter_kecamatan_id-container
    Wait Until Element Is Enabled    id:select2-filter_kelurahan_id-container
    Click Element    id:select2-filter_kelurahan_id-container
    Click Element    xpath://*[@id="filter_kelurahan_id"]/option[text()='Jangkung']
    Click Element    id:select2-filter_kelurahan_id-container
    Wait Until Element Is Enabled    id:select2-filter_tps_id-container
    Click Element    id:select2-filter_tps_id-container
    Click Element    xpath://*[@id="filter_tps_id"]/option[text()='TPS 8 Jangkung']
    Click Element    id:select2-filter_tps_id-container
    Wait Until Element Is Enabled    xpath://*[@id="table-inputpemilih_id-modal"]/div/div/form/div[2]/button[2]
    Click Element    xpath://*[@id="table-inputpemilih_id-modal"]/div/div/form/div[2]/button[2]
    Sleep    5

Penambahan Data Baru
    Wait Until Element Is Enabled    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Click Element    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    5
    Click Element    xpath://*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[1]
    Sleep    5
    Wait Until Element Is Enabled    id:pemilih_kelurahan_id
    Wait Until Element Is Enabled    id:pemilih_status_kawin
    Wait Until Element Is Enabled    id:pemilih_caleg_id
    Input Text    id:pemilih_kk    3507132410960004
    Input Text    id:pemilih_nik    3507132410960004
    Input Text    id:pemilih_nama    Dikoy
    Input Text    id:pemilih_alamat    Jl. Wijaya Kusuma No.155
    Input Text    id:pemilih_rt    25
    Input Text    id:pemilih_rw    03
    Select From List By Value    id:pemilih_kelurahan_id    8a0c1a3f64fe92cbdad594915bd3cc60
    Input Text    id:pemilih_tempat_lahir    Malang
    Click Element    id:pemilih_tgl_lahir
    Sleep    1
    Click Element    xpath://div[@class='datepicker-days']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://div[@class='datepicker-months']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://div[@class='datepicker-years']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://span[text()='1990']
    Sleep    1
    Click Element    xpath://span[text()='1996']
    Sleep    1
    Click Element    xpath://span[text()='Oct']
    Sleep    1
    Click Element    xpath://td[@class="day" and text()='24']
    Click Element    xpath://*[@id="form_inputpemilih"]/div[1]/div/div[2]/div[3]/label
    Select From List By Value    id:pemilih_status_kawin    638dee9c57c748cdbfbd37c861e6923a
    Select From List By Value    id:pemilih_caleg_id    0926a39a50026a88279cc70b79e9bc97
    Select From List By Value    id:pemilih_tps_id    f80692623d2baba95f41d8fbbbb86fae
    Sleep    3

Perubahan Data
    Wait Until Element Is Enabled    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Click Element    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    5
    Input Text    id:table-inputpemilih_dtSearch    Gend
    Sleep    3
    Click Element    xpath://*[@id="table-inputpemilih"]/tbody/tr/td[8]/a[2]
    Sleep    2
    Wait Until Element Is Enabled    id:pemilih_kelurahan_id
    Wait Until Element Is Enabled    id:pemilih_status_kawin
    Wait Until Element Is Enabled    id:pemilih_caleg_id
    Input Text    id:pemilih_kk    3507132410960004
    Input Text    id:pemilih_nik    3507132410960004
    Input Text    id:pemilih_nama    Dikoy
    Input Text    id:pemilih_alamat    Jl. Wijaya Kusuma No.155
    Input Text    id:pemilih_rt    25
    Input Text    id:pemilih_rw    03
    Select From List By Value    id:pemilih_kelurahan_id    8a0c1a3f64fe92cbdad594915bd3cc60
    Input Text    id:pemilih_tempat_lahir    Malang
    Click Element    id:pemilih_tgl_lahir
    Sleep    1
    Click Element    xpath://div[@class='datepicker-days']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://div[@class='datepicker-months']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://div[@class='datepicker-years']/table/thead/tr[2]/th[2]
    Sleep    1
    Click Element    xpath://span[text()='1990']
    Sleep    1
    Click Element    xpath://span[text()='1996']
    Sleep    1
    Click Element    xpath://span[text()='Oct']
    Sleep    1
    Click Element    xpath://td[@class="day" and text()='24']
    Click Element    xpath://*[@id="form_inputpemilih"]/div[1]/div/div[2]/div[3]/label
    Select From List By Value    id:pemilih_status_kawin    638dee9c57c748cdbfbd37c861e6923a
    Select From List By Value    id:pemilih_caleg_id    0926a39a50026a88279cc70b79e9bc97
    Select From List By Value    id:pemilih_tps_id    f80692623d2baba95f41d8fbbbb86fae
    Sleep    3

Import Data
    Wait Until Element Is Enabled    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Click Element    xpath://*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3
    Wait Until Element Is Enabled    xpath://*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[2]
    Click Element    xpath://*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[2]
    Sleep    2
    Click Element    xpath://*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/div/a[2]
    Sleep    2
    Choose File    xpath://*[@id="form_upload_pemilih"]/div[1]/div/div/input    C:/Users/Dicky Pradana/Downloads/Documents/Profile.pdf
    Sleep    2
    Click Element    xpath://*[@id="form_upload_pemilih"]/div[2]/button[2]
    Sleep    2
    Click Button    xpath://button[text()=' Yes']
    Sleep    3    