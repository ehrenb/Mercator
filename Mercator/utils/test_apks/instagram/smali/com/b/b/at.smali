.class public Lcom/b/b/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/at$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/b/b/at;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/b/b/bb;",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/cs;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/b/b/at$a;

.field private g:Lcom/b/b/bd;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/b/b/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/at;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1408
    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1409
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1410
    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1411
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/b/b/at;->d:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/b/at;->a:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/b/b/at$1;

    invoke-direct {v0, p0}, Lcom/b/b/at$1;-><init>(Lcom/b/b/at;)V

    iput-object v0, p0, Lcom/b/b/at;->e:Lcom/b/b/bp;

    .line 89
    sget-object v0, Lcom/b/b/at$a;->a:Lcom/b/b/at$a;

    iput-object v0, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    .line 94
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/b/b/at;->e:Lcom/b/b/bp;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    .line 95
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    new-instance v1, Lcom/b/b/at$2;

    invoke-direct {v1, p0}, Lcom/b/b/at$2;-><init>(Lcom/b/b/at;)V

    invoke-virtual {v0, v1}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/at;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/b/b/at;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/at;->c:Lcom/b/b/at;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/b/b/at;

    invoke-direct {v0}, Lcom/b/b/at;-><init>()V

    sput-object v0, Lcom/b/b/at;->c:Lcom/b/b/at;

    .line 45
    :cond_0
    sget-object v0, Lcom/b/b/at;->c:Lcom/b/b/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/b/b/at;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/b/b/at;->d()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 306
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2374
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 309
    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v4, "Error when saving deviceId"

    invoke-static {v2, v3, v4, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 308
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/b/b/at;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x25

    .line 8133
    :goto_0
    sget-object v0, Lcom/b/b/at$a;->e:Lcom/b/b/at$a;

    iget-object v1, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    invoke-virtual {v0, v1}, Lcom/b/b/at$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8135
    sget-object v0, Lcom/b/b/at$4;->b:[I

    iget-object v1, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    invoke-virtual {v1}, Lcom/b/b/at$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8159
    :goto_1
    :try_start_0
    sget-object v0, Lcom/b/b/at$4;->b:[I

    iget-object v1, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    invoke-virtual {v1}, Lcom/b/b/at$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 8161
    :pswitch_0
    invoke-direct {p0}, Lcom/b/b/at;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8176
    :catch_0
    move-exception v0

    .line 8177
    const/4 v1, 0x4

    sget-object v2, Lcom/b/b/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during id fetch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8137
    :pswitch_1
    sget-object v0, Lcom/b/b/at$a;->b:Lcom/b/b/at$a;

    iput-object v0, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    goto :goto_1

    .line 8141
    :pswitch_2
    sget-object v0, Lcom/b/b/at$a;->c:Lcom/b/b/at$a;

    iput-object v0, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    goto :goto_1

    .line 8145
    :pswitch_3
    sget-object v0, Lcom/b/b/at$a;->d:Lcom/b/b/at$a;

    iput-object v0, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    goto :goto_1

    .line 8149
    :pswitch_4
    sget-object v0, Lcom/b/b/at$a;->e:Lcom/b/b/at$a;

    iput-object v0, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    goto :goto_1

    .line 8215
    :pswitch_5
    :try_start_1
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 8253
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 9097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 8253
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9275
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9279
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 9403
    iget-object v2, p0, Lcom/b/b/at;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 9279
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 8254
    :goto_2
    if-nez v0, :cond_2

    .line 8255
    const/4 v0, 0x0

    .line 8245
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8217
    :cond_0
    :goto_4
    iput-object v0, p0, Lcom/b/b/at;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 9279
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 8258
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AND"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 10262
    :cond_3
    invoke-static {}, Lcom/b/b/at;->f()Ljava/lang/String;

    move-result-object v0

    .line 10263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10265
    invoke-direct {p0}, Lcom/b/b/at;->g()Ljava/lang/String;

    move-result-object v0

    .line 10266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10284
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 10285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v4

    .line 11097
    iget-object v4, v4, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 10285
    invoke-static {v4}, Lcom/b/b/dc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/b/b/df;->e(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 10286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11290
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11294
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    .line 12097
    iget-object v1, v1, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 12399
    const-string v2, ".flurryb."

    .line 11294
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 11296
    invoke-static {v1}, Lcom/b/b/de;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11300
    invoke-static {v0, v1}, Lcom/b/b/at;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_4

    .line 8169
    :pswitch_6
    invoke-direct {p0}, Lcom/b/b/at;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 8182
    :cond_5
    new-instance v0, Lcom/b/b/au;

    invoke-direct {v0}, Lcom/b/b/au;-><init>()V

    .line 8183
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bq;->a(Lcom/b/b/bo;)V

    .line 36
    return-void

    .line 8135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 8159
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private d()V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/b/b/df;->a()V

    .line 191
    invoke-static {}, Lcom/b/b/at;->e()Lcom/b/b/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/b/b/at;->g:Lcom/b/b/bd;

    .line 194
    invoke-virtual {p0}, Lcom/b/b/at;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/b/b/at;->h()V

    .line 201
    new-instance v0, Lcom/b/b/av;

    invoke-direct {v0}, Lcom/b/b/av;-><init>()V

    .line 202
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bq;->a(Lcom/b/b/bo;)V

    .line 204
    :cond_0
    return-void
.end method

.method private static e()Lcom/b/b/bd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 223
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    .line 224
    new-instance v0, Lcom/b/b/bd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/b/b/bd;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    sget-object v0, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    .line 233
    sget-object v2, Lcom/b/b/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 239
    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    .line 3097
    iget-object v1, v1, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 3399
    const-string v2, ".flurryb."

    .line 317
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4378
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eq v1, v3, :cond_2

    .line 330
    :goto_1
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 4381
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 327
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 328
    :goto_2
    const/4 v3, 0x6

    :try_start_3
    sget-object v4, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 327
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    .line 5097
    iget-object v1, v1, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 336
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 337
    if-nez v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    new-instance v2, Lcom/b/b/at$3;

    invoke-direct {v2, p0}, Lcom/b/b/at$3;-><init>(Lcom/b/b/at;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 352
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 354
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v2

    .line 6097
    iget-object v2, v2, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 354
    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6385
    const v1, 0xb5fa

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eq v1, v3, :cond_3

    .line 367
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 6389
    :cond_3
    const/4 v1, 0x2

    :try_start_2
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 6393
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 6395
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 364
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 365
    :goto_2
    const/4 v3, 0x6

    :try_start_3
    sget-object v4, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/b/b/df;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 364
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 415
    .line 7108
    iget-object v0, p0, Lcom/b/b/at;->g:Lcom/b/b/bd;

    if-nez v0, :cond_2

    .line 7109
    const/4 v0, 0x0

    .line 416
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    sget-object v1, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v2, "Fetched advertising id"

    invoke-static {v3, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/b/b/at;->a:Ljava/util/Map;

    sget-object v2, Lcom/b/b/bb;->b:Lcom/b/b/bb;

    invoke-static {v0}, Lcom/b/b/df;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8124
    :cond_0
    iget-object v0, p0, Lcom/b/b/at;->h:Ljava/lang/String;

    .line 422
    if-eqz v0, :cond_1

    .line 423
    sget-object v1, Lcom/b/b/at;->b:Ljava/lang/String;

    const-string v2, "Fetched device id"

    invoke-static {v3, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/b/b/at;->a:Ljava/util/Map;

    sget-object v2, Lcom/b/b/bb;->a:Lcom/b/b/bb;

    invoke-static {v0}, Lcom/b/b/df;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_1
    return-void

    .line 7112
    :cond_2
    iget-object v0, p0, Lcom/b/b/at;->g:Lcom/b/b/bd;

    .line 8029
    iget-object v0, v0, Lcom/b/b/bd;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/b/b/at$a;->e:Lcom/b/b/at$a;

    iget-object v1, p0, Lcom/b/b/at;->f:Lcom/b/b/at$a;

    invoke-virtual {v0, v1}, Lcom/b/b/at$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Lcom/b/b/at;->g:Lcom/b/b/bd;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/b/b/at;->g:Lcom/b/b/bd;

    .line 2038
    iget-boolean v1, v1, Lcom/b/b/bd;->b:Z

    .line 120
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
