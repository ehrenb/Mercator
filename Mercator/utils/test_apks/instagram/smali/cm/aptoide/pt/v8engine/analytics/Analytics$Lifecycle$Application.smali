.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# static fields
.field static facebookLogger:Lcom/facebook/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForUTMFileInMetaINF()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 239
    const/4 v2, 0x0

    .line 241
    :try_start_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 243
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 244
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    :try_start_1
    const-string v2, "META-INF/utm"

    .line 246
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 248
    new-instance v3, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;

    invoke-direct {v3, v2}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;-><init>(Ljava/io/InputStream;)V

    .line 249
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 251
    const-string v4, "utm_source"

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->valueExtracter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    const-string v5, "utm_medium"

    invoke-virtual {v3, v5}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->valueExtracter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    const-string v6, "utm_campaign"

    invoke-virtual {v3, v6}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->valueExtracter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    const-string v7, "utm_content"

    invoke-virtual {v3, v7}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->valueExtracter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    const-string v8, "entry_point"

    invoke-virtual {v3, v8}, Lcm/aptoide/pt/v8engine/analytics/UTMFileParser;->valueExtracter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 258
    invoke-static {v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setUTMSource(Ljava/lang/String;)V

    .line 261
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    invoke-static {v5}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setUTMMedium(Ljava/lang/String;)V

    .line 265
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    invoke-static {v6}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setUTMCampaign(Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 270
    invoke-static {v7}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setUTMContent(Ljava/lang/String;)V

    .line 273
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 274
    invoke-static {v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setEntryPointDimension(Ljava/lang/String;)V

    .line 277
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 296
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "problem parsing utm/no utm file"

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :catch_1
    move-exception v1

    .line 282
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No package name utm file."

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 285
    :goto_2
    if-eqz v1, :cond_5

    .line 287
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 288
    :catch_3
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 294
    :cond_5
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No utm file."

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static onCreate(Landroid/app/Application;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p0}, Lcom/facebook/h;->a(Landroid/content/Context;)V

    .line 211
    invoke-static {p0}, Lcom/facebook/a/g;->a(Landroid/app/Application;)V

    .line 212
    invoke-static {p0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;->facebookLogger:Lcom/facebook/a/g;

    .line 214
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 216
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IS_LOCALYTICS_ENABLE_KEY"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 215
    :goto_0
    # setter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$002(Z)Z

    .line 217
    const-string v0, "IS_LOCALYTICS_FIRST_SESSION"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$102(Z)Z

    .line 218
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/localytics/android/Localytics;->autoIntegrate(Landroid/app/Application;)V

    .line 221
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;->setupDimensions()V

    .line 222
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Localytics session configured"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method private static setupDimensions()V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Lifecycle$Application;->checkForUTMFileInMetaINF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setUTMDimensionsToUnknown()V

    .line 231
    :cond_0
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->isFirstSession:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->ACTIVATE_LOCALYTICS:Z
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "90% sampling"

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setSamplingTypeDimension(Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "Full-tracking"

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Dimensions;->setSamplingTypeDimension(Ljava/lang/String;)V

    goto :goto_0
.end method
