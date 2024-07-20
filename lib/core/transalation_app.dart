import 'package:get/get_navigation/src/root/internacionalization.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
// tabs tr
          'card': 'Get the Virtual Credit card',
          'home_page': 'Home',
          'change_coins': 'Transfer',
          'withdrawal_profits': 'withdrawal',
          'profil': 'Personal',
// service titles
          'currency_mining': 'Currency mining',
          'currency_investment': 'Currency investment',
          'shop': 'Shop',
// service desc
          'shop_des':
              'Open the shop and redeem your points for product categories',
          'currency_investmen_des':
              'Invest in the currency and get additional profits. There are currently',
          'currency_investmen_dessecond': 'coins',
          'currency_investment_descriptionThird': 'Before the official launch.',
          'currency_mining_des':
              'Watch a video every 30 minutes and get 1 DZM coins',
// chart
          'chart_last_seven_days': 'Last 7 days changes',

// auth
          'welcom_title': 'to DZMovement The next Crypto generation',
          'welcome': 'Welcome',
          'phone_number': 'Phone Number',
          'verrification_code': 'Please Enter the code to verify',
          'resend_code': 'resend the code',
          'you_will_reseve_message':
              'You will Receive a short Message to this Phone Number',
          'account_info': 'Account Information',
          'username': 'username',
          'email': 'email',
          'promo_code': 'Referral code',
          'log_out': 'Logout',
          'auth-error': 'Invalid email or password',
          'user-already-exists': 'User already exists',
          'user-not-found': 'user not found',
// validator fields
          'refral_empty': 'Please enter a valid code',
          'refral_tomuch': 'Sorry, you cannot enter more than 150 characters',
          'invalid_email': 'Please enter a valid email address',
          'username_empty': 'Please enter your username',
          'username_tomuch': 'Sorry, you cannot enter more than 20 characters',
          'valid_phone': 'Please enter a phone number',
          'invalid_otp': 'Please enter the correct code',
          'field_empty': 'This field cannot be empty',
          'congratulation': 'The operation has been completed successfully',
          'processing': 'Your order  is Processing',
          'email_adress': 'Email Address',
          'succ': 'Account successfully created',
          'verrifie_email': 'Please verify your email address',

// button tr
          'phone_number_button': 'Verify the phone number',
          'verify': 'Verify',
          'create_account': 'Create Account',

          'languages': 'Language',
          'save': 'Save',
          'buy': 'Buy',

          'market_close': 'The Market is closed at the Moment',
          'coins_enough': 'Your DZM Coins are not Enough',
          'order': 'Order Now',
          'city': 'City',
          'state': 'State',
          'adress': 'Adress',
          'zip_code': 'Zip Code',
          'send': 'Send',
          'error': 'Please try again',
          'coins_number': 'Coins Number',
          'min_coins': 'The minimum you can send is 50 DZM',
          'coins_not_enough': 'You do not have enough points in your account',
          'sent_suecc': 'DZM Sent successfully',
          'congratulation_sent': 'Congratulations',

          // transaltion currency investment page
          'currency_invest': 'Currency Investment',
          'calculate': 'Calculate Your Investment',
          'you_get_dzm': 'You Get in Dzm',
          'you_pay_Usd': 'You Pay in USDT',
          'copy_the_TRC':
              'Copy The Following TRC-20 adress and send exact amount in USDT.',
          'note': 'Note : 1\$ Tax',
          'screenshot':
              'Please dont\'t forget to take a screenshot of the receipt and send it to us',
          'invest_now': 'Send the request',
          'please_pick_screnshot': 'Please Pick a Screenshot',
          'dzm_max': 'the minimum to buy is 2000 dzm',
          'sent_suecc_req': 'Request sent Successfully',

          /// acount
          'refrel_message':
              'This is The referral Link for you Profile you can use it to invite other users and get 3 dzm',
          'close': 'Close',
          'you_pay_inPayer': 'You Pay in Payer',
          'payer_wallet_description': 'Copy our Payer wallet address',
          'copied': 'Copied',
          'login': 'Login',
          'dont_have_account': 'If you don\'t have an Account',

// market,

// location
          'location_title': 'Enable  Location',
          'location_des': 'You nedd to enable your Location to use',

// withdrawal
          'calculate_withdrawal': 'Caculate your withdrawal',
          'your_sold_dzm': 'Your Sold in DZM',
          'you_get_inUsdt': 'You Get in USDT',
          'trc_20': 'Past your TRC-20 Address in Field Below',
          'your_trc_here': 'Your TRC-20 ADRESS',
          'binance_text':
              'if you are using binance put your ID or Email instead and there will be no tax',
          'binance_id': 'Your Binace ID or Email',
          'Order_now': 'Order Now',
          'you_get_inPayer': 'You Get in Payer',
          'payer_id': 'Past your Payer in the field below',
          'you_get_inBaridmob': 'You Get in Baridmob',
          'baridmob_id': 'Past your Baridmob in the field below',
          'invalid_Payer': 'Invalid Payer',
          'invalid_rip': 'Please entre Valid RIP',
          'withdraw_title': 'Withdrawals not Available',
          'withdraw_des':
              'We regret to inform you that withdrawals are currently not available until the app reaches its maximum number of users and investment.',
          'search': 'Search for Friend',
          'no_friend_found': 'No Friend Found',
          'dzm_left': 'DZM Left',
          'email_validator': 'Email not Have this Format .',

          'password_empty': 'Password is Empty .',
          'password_long': 'The password is excessively long .',
          'password': 'Password',
          'forget_password': 'Forgot Password ?',
          'user_not_fund': 'user not found',
          'wrong_password': 'wrong password',
          'verrify_email': 'please verify your email address',
          'signup': 'Sign Up',
          'weak_password': 'Weak password',
          'email_alredy_inuse': 'Email is already in use',
          'no_users': 'no users found',
          'have_account': 'If you have an Account',
          'forgot_password_title': 'Did you forget your password',
          'forgot_password_des':
              'you will receive a link in your gmail account',
          'email_sent': 'an email has been sent to you',
          'success': 'email sent',
          'search_title': 'Easily Transfer Currency to Other Users',
          'search_des':
              'Discover a seamless way to send coins to fellow users within our app. Swiftly transfer currency with just a few taps, ensuring hassle-free transactions and seamless user interaction.',
          'terms':
              'I Accept All Terms And Conditions Written In The Website Below.',
          'terms_err': 'Please Check The Box Of Terms And Condition',
          'shere_app_msg': 'Share the application',
          'add_user_photo': 'Add now photo',
          'telegram_button_msg': 'Follow the Telegram channel'
        },

/////
////
/////
//// arabe
        'ar': {
// tabs tr
          'home_page': 'الرئيسية',
          'change_coins': 'تحويل',
          'withdrawal_profits': 'سحب',
          'profil': 'ملفي',
// service titles
          'currency_mining': 'تعدين العملة',
          'currency_investment': 'الاستثمار في العملة',
          'shop': 'المتجر',
// service desc
          'shop_des': 'قم بفتح المتجر واستبدل نقاطك بأصناف المنتجات',
// chart
          'chart_last_seven_days': 'التغييرات في الأيام السبعة الأخيرة',
          'currency_investmen_des':
              'قم بالإستثمار في العملة و احصل على أرباح إضافية، متبقي حاليا',
          'currency_mining_des':
              'قم بمشاهدة فيديو كل  30 دقيقة و احصل على عملة واحدة من DZM',
          'welcome': 'مرحبا بكم',
          'welcom_title': 'في تطبيق DZMovment عملة الجيل القادم',
// auth
          'phone_number': 'رقم الهاتف',
          'verrification_code': 'الرجاء إدخال الرمز للتحقق من',
          'you_will_reseve_message': 'سوف تتلقى رسالة قصيرة إلى رقم الهاتف هذا',
          'resend_code': 'أعد إرسال الرمز',
          'account_info': 'معلومات الحساب',
          'username': 'اسم المستخدم',
          'email': 'بريد إلكتروني',
          'promo_code': 'رمز الإحالة',
          'log_out': 'تسجيل خروج',
          'login': 'تسجيل الدخول',

// validator fields
          'refral_empty': 'الرجاء إدخال رمز صحيح',
          'refral_tomuch': 'عذرًا، لا يمكنك إدخال أكثر من 150 حرفًا',
          'invalid_email': 'يرجى إدخال عنوان بريد إلكتروني صالح',
          'username_empty': 'الرجاء إدخال اسم المستخدم',
          'username_tomuch': 'عذرًا، لا يمكنك إدخال أكثر من 20 حرفًا',
          'valid_phone': "الرجاءإدخال رقم الهاتف",
          'invalid_otp': 'الرجاء ادخال الرمز الصحيح',
          'field_empty': 'هذا الحقل لا يمكن ان يكون فارغا',

// button tr
          'phone_number_button': 'تحقق من رقم الهاتف',
          'verify': 'تحقق',
          'create_account': 'إنشاء حساب',

          'languages': 'اللغة',
          'save': 'حفظ',

          'buy': 'شراء',
          'market_close': 'السوق مغلق في الوقت الحالي',
          'coins_enough': 'عملات DZM الخاصة بك ليست كافية',
          'order': 'طلب الآن',
          'city': 'المدينة',
          'state': 'الولاية',
          'adress': 'العنوان',
          'zip_code': 'الرمز البريدي',
          'congratulation': 'لقد تمت العملية بنجاح',
          'processing': 'طلبك قيد المعالجة',
          'send': 'إرسال',
          'error': 'المرجو إعادة المحاولة',
          'coins_number': 'عدد العملات',
          'min_coins': 'الحد الأدنى الذي يمكنك إرساله هو 50 DZM',
          'coins_not_enough': 'لا تمتلك العدد الكافي من النقاط في حسابك',
          'sent_suecc': 'تم إرسال DZM بنجاح',
          'congratulation_sent': 'تهانينا',

          // transaltion currency investment page
          'currency_invest': 'الاستثمار في العملة',
          'calculate': 'احسب استثمارك',
          'you_get_dzm': 'كم ستحصل على DZM',
          'you_pay_Usd': 'كم ستدفع من USDT',
          'copy_the_TRC':
              'انسخ عنوان TRC20 التالي وأرسل المبلغ المحدد بالدولار الأمريكي.',
          'note': 'ملحوظة: ضريبة 1\$',
          'screenshot':
              'من فضلك لا تنسى التقاط لقطة شاشة للإيصال وإرسالها إلينا',
          'invest_now': 'ارسال الطلب',
          'please_pick_screnshot': 'الرجاء اختيار لقطة للشاشة',
          'dzm_max': 'الحد الأدنى للشراء هو 2000 DZM',
          'sent_suecc_req': 'تم إرسال الطلب بنجاح',

          /// acount
          'refrel_message':
              'هذا هو رابط الإحالة الخاص بملفك الشخصي، ويمكنك استخدامه لدعوة مستخدمين آخرين والحصول على 3 dzm',
          'close': 'العودة',
// location
          'location_title': 'تفعيل الموقع',
          'location_des': ' تحتاج إلى تفعيل موقعك للاستخدام',

// withdrawal
          'calculate_withdrawal': 'احسب سحبك',
          'your_sold_dzm': 'مبيعاتك في DZM',
          'you_get_inUsdt': 'تحصل على USDT',
          'trc_20': "قم بلصق عنوان TRC-20 الخاص بك في الحقل أدناه",
          'your_trc_here': "عنوان TRC-20 الخاص بك",
          'binance_text':
              "إذا كنت تستخدم بينانس، ضع هويتك أو عنوان بريدك الإلكتروني بدلاً منه، ولن يتم فرض أي ضريبة.",
          'binance_id': "هويتك في بينانس أو عنوان بريدك الإلكتروني",
          'Order_now': "اطلب الآن",
          'you_get_inPayer': 'الكمية التي سوف تحصل عليها',
          'payer_id': 'قم بلصق محفظة  باير الخاصة بك',
          'you_get_inBaridmob': 'الكمية التي سوف تحصل عليها',
          'baridmob_id': 'قم بلصق محفظة  بريد موب الخاصة بك',
          'invalid_Payer': 'رمز غير صحيح',
          'invalid_rip': 'الرجاء إدخال RIP صالح',

          'withdraw_title': 'عمليات السحب غير متاحة',
          'withdraw_des':
              'نأسف لإبلاغك بأن عمليات السحب غير متاحة حاليًا حتى يصل التطبيق إلى الحد الأقصى لعدد المستخدمين والاستثمار.',

          'you_pay_inPayer': 'ستدفع على Payer',
          'payer_wallet_description': 'انسخ عنوان المحفظة الخاصة بنا',
          'copied': 'نسخ',
          'search': 'ابحث عن صديق',
          'no_friend_found': 'لم يتم العثور على صديق',
          'dzm_left': 'عملة متبقية',
          'password_empty': 'كلمة المرور فارغة .',
          'password_long': 'كلمة المرور طويلة جدًا.',
          'password': 'كلمة المرور',
          'forget_password': 'هل نسيت كلمة السر ؟',
          'user_not_fund': 'لم يتم العثور على المستخدم',
          'wrong_password': 'كلمة مرور خاطئة',
          'verrify_email': 'يرجى التحقق من عنوان البريد الإلكتروني الخاص بك',
          'email_adress': 'البريد الإلكتروني',
          'signup': 'إنشاء حساب',
          'succ': 'تم إنشاء الحساب بنجاح',
          'verrifie_email': 'يرجى التحقق من عنوان بريدك الإلكتروني',
          'no_users': 'لم يتم العثور على مستخدمين',
          'dont_have_account': 'إذا كنت لا تملك حساب قم ب',
          'email_validator': 'البريد الإلكتروني غير صحيح',
          'have_account': 'إذا كان لديك حساب قم ب',
          'email_alredy_inuse': 'البريد الالكتروني قيد الاستخدام بالفعل',
          'weak_password': 'كلمة مرور ضعيفة',
          'forgot_password_title': 'هل نسيت كلمة المرور الخاصة بك',
          'forgot_password_des': 'سوف تتلقى رابطًا في حساب Gmail الخاص بك',
          'email_sent': 'تم إرسال بريد إلكتروني إليك',
          'success': 'تم إرسال الرسالة',
          'auth-error': 'البريد الإلكتروني أو كلمة السر خاطئة',
          'user-already-exists': 'البريد الالكتروني قيد الاستخدام بالفعل',
          'user-not-found': 'لم يتم العثور على المستخدم',
          'currency_investmen_dessecond': 'عملة',
          'currency_investment_descriptionThird': 'قبل الإنطلاق الرسمي',
          'search_title': 'تحويل العملة بسهولة إلى مستخدمين آخرين',
          'search_des':
              'اكتشف طريقة سلسة لإرسال العملات المعدنية إلى المستخدمين الآخرين داخل تطبيقنا. قم بتحويل العملة بسرعة من خلال بضع نقرات فقط، مما يضمن إجراء معاملات خالية من المتاعب وتفاعل المستخدم السلس.',

          'terms':
              'انا موافق على جميع الشروط والأحكام المكتوبة في الموقع أدناه',
          'terms_err': 'يرجى التحقق من مربع الشروط والأحكام',
          'card': 'احصل على البطاقة',
          'shere_app_msg': 'مشاركه التطبيق',
          'add_user_photo': 'اضافه صوره جديده',
          'telegram_button_msg': 'متابعه قناه التلغرام'
        },
      };
}
