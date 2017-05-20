.class public Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;
.super Landroid/support/v7/a/e;
.source "DeepLinkIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;,
        Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$DeepLinksKeys;,
        Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$DeepLinksTargets;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cm.aptoide.pt"

.field public static final DEEPLINK_ID:I = 0x1

.field public static final DEEP_LINK:Ljava/lang/String; = "deeplink"

.field public static final SCHEDULE_DOWNLOADS:Ljava/lang/String; = "schedule_downloads"

.field public static final SCHEDULE_DOWNLOADS_ID:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private TMP_MYAPP_FILE:Ljava/lang/String;

.field private app:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-class v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->sURIMatcher:Landroid/content/UriMatcher;

    .line 66
    sget-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cm.aptoide.pt"

    const-string v2, "deeplink"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cm.aptoide.pt"

    const-string v2, "schedule_downloads"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    .line 73
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getActivityProvider()Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/ActivityProvider;->getMainActivityFragmentClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->downloadMyAppFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TMP_MYAPP_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->parseXmlMyapp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->app:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->proceed()V

    return-void
.end method

.method private downloadMyApp()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;-><init>(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$MyAppDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->asyncTask:Landroid/os/AsyncTask;

    .line 305
    return-void
.end method

.method private downloadMyAppFile(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 386
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 387
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 392
    :goto_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 394
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TMP_MYAPP_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 399
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TMP_MYAPP_FILE:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v3, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 401
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 403
    const/4 v0, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v4, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 404
    :goto_1
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 405
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 406
    const/4 v0, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v4, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 410
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 411
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_2
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic lambda$startFromPackageName$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 269
    return-void
.end method

.method private parseAptoideInstallUri(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 308
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 309
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 313
    array-length v6, v5

    move v4, v0

    move-object v2, v1

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v5, v4

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "package"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 315
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v10

    .line 313
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "store"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 317
    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v10

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "show_install_popup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 323
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 324
    const/4 v3, 0x0

    invoke-virtual {p0, v8, v9, v1, v3}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromAppView(JLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_2
    return-void

    .line 326
    :catch_0
    move-exception v3

    .line 327
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 331
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 332
    invoke-direct {p0, v2, v1, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromAppview(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 334
    :cond_4
    sget-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Package name is mandatory, it should be in uri. Ex: aptoideinstall://package=cm.aptoide.pt&store=apps&show_install_popup=true"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private parseXmlMyapp(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 422
    new-instance v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;-><init>()V

    .line 423
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 424
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->server:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->getApp()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->app:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    :goto_1
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 426
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private parseXmlString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 234
    new-instance v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;-><init>()V

    .line 235
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 237
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 238
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 239
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 240
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->server:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->getApp()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->app:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :goto_1
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private proceed()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->server:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->server:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startWithRepo(Ljava/util/ArrayList;)V

    .line 438
    :goto_0
    return-void

    .line 435
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    goto :goto_0
.end method

.method private startFromAppview(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    const-string v1, "appViewFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v1, "show_auto_install_popup"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method private startGenericDeepLink(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-string v1, "generic_deeplink"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private startScheduleDownloads(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    const-string v1, "schedule_downloads"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method


# virtual methods
.method public aptoidevoiceSearch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    .line 290
    return-void
.end method

.method synthetic lambda$startFromPackageName$0(Ljava/lang/String;Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 0

    .prologue
    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromAppView(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/myapp.myapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TMP_MYAPP_FILE:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->website(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcm/aptoide/pt/logger/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "aptoiderepo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startWithRepo(Ljava/util/ArrayList;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "aptoidexml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->parseXmlString(Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v2, "newrepo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "aptoidesearch://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "aptoidesearch://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "aptoidevoicesearch://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-string v0, "aptoidevoicesearch://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->aptoidevoiceSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 103
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_6

    array-length v1, v1

    if-le v1, v5, :cond_6

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 105
    :goto_1
    const-string v1, "pname:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_6
    const-string v0, ""

    goto :goto_1

    .line 107
    :cond_7
    const-string v1, "pub:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 111
    :cond_8
    const-string v0, "http://market.android.com/details?id="

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 113
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    const-string v0, "https://market.android.com/details?id="

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 116
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_a
    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 119
    :cond_b
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 120
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 121
    const-string v2, "pname:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 122
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_3
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_c
    const-string v2, "pub:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 124
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 127
    :cond_d
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 128
    :catch_0
    move-exception v1

    .line 129
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 133
    :cond_e
    const-string v0, "aptword://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    const-string v0, "aptword://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "\\*"

    const-string v3, "_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 144
    const-string v0, "AptoideAptWord"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    const-class v3, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_4
    if-eqz v0, :cond_f

    .line 154
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v2, "fromAd"

    invoke-static {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->from(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_4

    .line 158
    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    goto/16 :goto_0

    .line 161
    :cond_10
    const-string v0, "imgs.aptoide.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "\\.myapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 166
    invoke-virtual {p0, v0, v1, v2, v6}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromAppView(JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 167
    :cond_11
    const-string v0, "http://webservices.aptoide.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    :try_start_2
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->splitQuery(Ljava/net/URI;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 177
    :goto_5
    if-eqz v0, :cond_13

    .line 179
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_7
    move-object v2, v0

    .line 183
    goto :goto_6

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_5

    .line 185
    :cond_12
    if-eqz v2, :cond_13

    .line 187
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 188
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v1, v3, v4}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startFromAppView(JLjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    goto/16 :goto_0

    .line 189
    :catch_3
    move-exception v0

    .line 190
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 191
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->simple_error_occured:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 198
    :cond_14
    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 200
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->downloadMyApp()V

    goto/16 :goto_0

    .line 201
    :cond_15
    const-string v0, "aptoideinstall://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 202
    const-string v0, "aptoideinstall://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->parseAptoideInstallUri(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_16
    const-string v0, "aptoide://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    sget-object v1, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_9
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    goto/16 :goto_0

    .line 207
    :pswitch_0
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startGenericDeepLink(Landroid/net/Uri;)V

    goto :goto_9

    .line 210
    :pswitch_1
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startScheduleDownloads(Landroid/net/Uri;)V

    goto :goto_9

    .line 215
    :cond_17
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    goto/16 :goto_0

    :cond_18
    move-object v0, v2

    goto/16 :goto_7

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->startActivity(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->finish()V

    .line 250
    return-void
.end method

.method public startFromAppView(JLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    const-string v1, "appViewFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "show_auto_install_popup"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public startFromAppView(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "appViewFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public startFromPackageName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 261
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;Ljava/lang/String;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 270
    return-void
.end method

.method public startFromSearch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    const-string v1, "searchFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public startWithRepo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v1, "newrepo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/receivers/DeepLinkIntentReceiver;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationLaunch;->newRepo()V

    .line 226
    return-void
.end method
