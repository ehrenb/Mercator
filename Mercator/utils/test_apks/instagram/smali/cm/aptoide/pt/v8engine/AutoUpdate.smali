.class public Lcm/aptoide/pt/v8engine/AutoUpdate;
.super Landroid/os/AsyncTask;
.source "AutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;,
        Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

.field private dialog:Landroid/app/ProgressDialog;

.field private downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

.field private downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

.field private installer:Lcm/aptoide/pt/v8engine/install/Installer;

.field private permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcm/aptoide/pt/v8engine/AutoUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/AutoUpdate;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;Lcm/aptoide/pt/v8engine/install/Installer;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/actions/PermissionManager;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAutoUpdateUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->url:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    .line 47
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 48
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    .line 49
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    .line 50
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->downloadManager:Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    .line 51
    return-void
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    :cond_0
    return-void
.end method

.method private isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 172
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getOverallDownloadStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$requestUpdateSelf$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 163
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    return-void
.end method

.method private requestUpdateSelf(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-static {v6}, Lcm/aptoide/pt/v8engine/V8Engine;->setAutoUpdateWasCalled(Z)V

    .line 122
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    new-array v3, v6, [I

    sget v4, Lcm/aptoide/pt/v8engine/R$attr;->alertDialog:I

    aput v4, v3, v5

    .line 123
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->update_self_title:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 128
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->update_self_msg:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 128
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 131
    const/4 v1, -0x1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    const v3, 0x1040013

    .line 132
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    const/4 v1, -0x2

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$2;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->is_resumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 55
    .line 58
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 59
    new-instance v3, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;-><init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$1;)V

    .line 61
    const-string v0, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting auto-update from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->url:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/16 v4, 0x2710

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 69
    # invokes: Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->getAutoUpdateInfo()Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
    invoke-static {v3}, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->access$100(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;)Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 73
    iget v4, v1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->vercode:I

    .line 74
    iget v5, v1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minsdk:I

    .line 75
    iget v6, v1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minAptoideVercode:I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    iget-object v7, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    .line 78
    invoke-virtual {v7}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 80
    if-le v4, v3, :cond_0

    if-le v3, v6, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    .line 82
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->isAlwaysUpdate()Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    .line 108
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    :try_start_3
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :cond_3
    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_1
    move-object v0, v2

    .line 108
    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 92
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 93
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 94
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 95
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 96
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 97
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 98
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 99
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 100
    :catch_4
    move-exception v0

    move-object v1, v2

    .line 101
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 104
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 104
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 100
    :catch_5
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    .line 97
    :catch_6
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    .line 94
    :catch_7
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 91
    :catch_8
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->doInBackground([Ljava/lang/Void;)Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$0(Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/actions/PermissionManager;->requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$1(Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    .line 145
    invoke-virtual {v1, p2}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v1

    .line 144
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$2(Lcm/aptoide/pt/v8engine/Progress;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$null$3(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_SYS_1:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate;->dismissDialog()V

    .line 153
    return-void
.end method

.method synthetic lambda$null$4(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 155
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate;->dismissDialog()V

    .line 156
    return-void
.end method

.method synthetic lambda$requestUpdateSelf$5(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->dialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->retrieving_update:I

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 138
    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager;

    .line 139
    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    .line 141
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lrx/b/e;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Lrx/b/e;

    move-result-object v0

    .line 144
    invoke-virtual {v1, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lrx/b/e;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lrx/d;->i()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lrx/b/b;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 159
    return-void
.end method

.method protected onPostExecute(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->requestUpdateSelf(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->onPostExecute(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)V

    return-void
.end method
