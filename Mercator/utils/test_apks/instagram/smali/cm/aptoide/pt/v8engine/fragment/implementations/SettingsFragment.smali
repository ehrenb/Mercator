.class public Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;
.super Landroid/support/v7/preference/d;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSetingPIN:Z


# instance fields
.field private context:Landroid/content/Context;

.field private fileManager:Lcm/aptoide/pt/v8engine/filemanager/FileManager;

.field private subscriptions:Lrx/j/b;

.field protected toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->isSetingPIN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v7/preference/d;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->maturePinSetRemoveClick()V

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Lrx/j/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->subscriptions:Lrx/j/b;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Lcm/aptoide/pt/v8engine/filemanager/FileManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->fileManager:Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method private dialogSetAdultPin(Landroid/support/v7/preference/Preference;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x1

    sput-boolean v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->isSetingPIN:Z

    .line 366
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$5;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->setAdultPinDialog(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dialogSetAdultPin$4(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->isSetingPIN:Z

    return-void
.end method

.method static synthetic lambda$onSharedPreferenceChanged$0(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "updates refreshed"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSharedPreferenceChanged$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method static synthetic lambda$setupClickHandlers$3(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    check-cast p0, Landroid/support/v7/preference/CheckBoxPreference;

    .line 187
    invoke-virtual {p0}, Landroid/support/v7/preference/CheckBoxPreference;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    move v0, v1

    .line 194
    :goto_0
    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setHWSpecsFilter(Z)V

    .line 196
    return v1

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    goto :goto_0
.end method

.method private maturePinSetRemoveClick()V
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getAdultContentPin()I

    move-result v0

    .line 345
    sget-object v1, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->ADULT_PIN:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 346
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$7;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->buildMaturePinInputDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->dialogSetAdultPin(Landroid/support/v7/preference/Preference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private settingsResult()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->setResult(I)V

    .line 371
    return-void
.end method

.method private setupClickHandlers()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getAdultContentPin()I

    move-result v0

    .line 129
    const-string v1, "Maturepin"

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 130
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 131
    const-string v0, "PINTEST"

    const-string v2, "PinBuild"

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->remove_mature_pin_title:I

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 133
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->remove_mature_pin_summary:I

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 135
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 142
    const-string v0, "matureChkBox"

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    .line 143
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isMatureSwitchOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    .line 150
    :goto_0
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->CHECK_AUTO_UPDATE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->setting_category_autoupdate_title:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 151
    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 153
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->CHECK_AUTO_UPDATE_CATEGORY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->setting_category_autoupdate_title:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 154
    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 157
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->ADULT_CHECK_BOX:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v2, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$2;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 183
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->FILTER_APPS:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$4;->lambdaFactory$()Landroid/support/v7/preference/Preference$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 199
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->CLEAR_CACHE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v2, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$3;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 223
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->HARDWARE_SPECS:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 235
    new-instance v2, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$4;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 286
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->MAX_FILE_CACHE:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    .line 288
    new-instance v2, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$5;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$5;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/EditTextPreference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 297
    sget-object v0, Lcm/aptoide/pt/v8engine/util/SettingsConstants;->ABOUT_DIALOG:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 298
    new-instance v2, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$6;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 337
    sget-boolean v0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->isSetingPIN:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->dialogSetAdultPin(Landroid/support/v7/preference/Preference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    :cond_1
    return-void

    .line 146
    :cond_2
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/CheckBoxPreference;->d(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/preference/d;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {}, Lcm/aptoide/pt/v8engine/filemanager/FileManager;->build()Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->fileManager:Lcm/aptoide/pt/v8engine/filemanager/FileManager;

    .line 77
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->subscriptions:Lrx/j/b;

    .line 78
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$xml;->settings:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 85
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->subscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 89
    invoke-super {p0}, Landroid/support/v7/preference/d;->onDestroyView()V

    .line 90
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    const-string v0, "updatesFilterAlphaBetaKey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/UpdateAccessor;

    .line 96
    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/UpdateAccessor;->removeAll()V

    .line 97
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->sync(Z)Lrx/a;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getAll(Z)Lrx/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/a;->b(Lrx/d;)Lrx/d;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 105
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->context:Landroid/content/Context;

    .line 110
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 112
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    .line 113
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/e;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 116
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->settings:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 117
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->setupClickHandlers()V

    .line 125
    return-void
.end method
