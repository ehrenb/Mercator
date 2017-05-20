.class public final Lcom/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/cs;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/b/a/b;

.field private static d:Z

.field private static e:I

.field private static f:J

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/b/a/a$1;

    invoke-direct {v0}, Lcom/b/a/a$1;-><init>()V

    sput-object v0, Lcom/b/a/a;->b:Lcom/b/b/bp;

    .line 68
    sput-object v3, Lcom/b/a/a;->c:Lcom/b/a/b;

    .line 71
    sput-boolean v2, Lcom/b/a/a;->d:Z

    .line 74
    const/4 v0, 0x5

    sput v0, Lcom/b/a/a;->e:I

    .line 77
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/b/a/a;->f:J

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a/a;->g:Z

    .line 83
    sput-boolean v2, Lcom/b/a/a;->h:Z

    .line 86
    sput-object v3, Lcom/b/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic a()Lcom/b/a/b;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/b/a/a;->c:Lcom/b/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/c;
    .locals 5

    .prologue
    .line 717
    sget-object v1, Lcom/b/a/c;->a:Lcom/b/a/c;

    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 720
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    return-object v1

    .line 724
    :cond_0
    if-nez p0, :cond_1

    .line 725
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    .line 2105
    invoke-static {}, Lcom/b/b/a;->b()Lcom/b/b/aq;

    move-result-object v2

    .line 2106
    sget-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    .line 2107
    if-eqz v2, :cond_2

    .line 2108
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lcom/b/b/aq;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/b/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 735
    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    sget-object v2, Lcom/b/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/b/a/c;"
        }
    .end annotation

    .prologue
    .line 770
    sget-object v1, Lcom/b/a/c;->a:Lcom/b/a/c;

    .line 772
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 773
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_0
    return-object v1

    .line 777
    :cond_0
    if-nez p0, :cond_1

    .line 778
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_1
    if-nez p1, :cond_2

    .line 783
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    .line 2114
    invoke-static {}, Lcom/b/b/a;->b()Lcom/b/b/aq;

    move-result-object v2

    .line 2115
    sget-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    .line 2116
    if-eqz v2, :cond_3

    .line 2117
    const/4 v0, 0x0

    invoke-virtual {v2, p0, p1, v0}, Lcom/b/b/aq;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/b/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    move-object v1, v0

    .line 793
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    sget-object v2, Lcom/b/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 257
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0}, Lcom/b/b/bu;->a(I)V

    goto :goto_0
.end method

.method public static a(J)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 352
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 357
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 622
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 626
    :cond_0
    if-nez p0, :cond_1

    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    if-nez v0, :cond_2

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before ending a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/b/ct;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    sget-object v1, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const-class v1, Lcom/b/a/a;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 155
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    monitor-exit v1

    return-void

    .line 159
    :cond_0
    if-nez p0, :cond_1

    .line 160
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "API key not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, "Flurry is already initialized"

    invoke-static {v0, v2}, Lcom/b/b/bu;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/b/b/dm;->a()V

    .line 173
    invoke-static {p0, p1}, Lcom/b/b/bg;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_4
    sget-object v2, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/b/a/b;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 208
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    if-nez p0, :cond_1

    .line 213
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Listener cannot be null"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/b/a/a;->b:Lcom/b/b/bp;

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->b(Ljava/lang/String;Lcom/b/b/bp;)V

    goto :goto_0

    .line 219
    :cond_1
    sput-object p0, Lcom/b/a/a;->c:Lcom/b/a/b;

    .line 220
    invoke-static {}, Lcom/b/b/bq;->a()Lcom/b/b/bq;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/b/a/a;->b:Lcom/b/b/bp;

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/b/b/bq;->a(Ljava/lang/String;Lcom/b/b/bp;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/b;ZIJZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    .line 5116
    sput-object p0, Lcom/b/a/a;->c:Lcom/b/a/b;

    invoke-static {p0}, Lcom/b/a/a;->a(Lcom/b/a/b;)V

    .line 5119
    sput-boolean p1, Lcom/b/a/a;->d:Z

    invoke-static {p1}, Lcom/b/a/a;->a(Z)V

    .line 5122
    sput p2, Lcom/b/a/a;->e:I

    invoke-static {p2}, Lcom/b/a/a;->a(I)V

    .line 5125
    sput-wide p3, Lcom/b/a/a;->f:J

    invoke-static {p3, p4}, Lcom/b/a/a;->a(J)V

    .line 5128
    sput-boolean p5, Lcom/b/a/a;->g:Z

    invoke-static {p5}, Lcom/b/a/a;->b(Z)V

    .line 5131
    sput-boolean p6, Lcom/b/a/a;->h:Z

    invoke-static {p6}, Lcom/b/a/a;->c(Z)V

    .line 5134
    sput-object p8, Lcom/b/a/a;->i:Ljava/lang/String;

    .line 5135
    sget-object v0, Lcom/b/a/a;->i:Ljava/lang/String;

    invoke-static {p7, v0}, Lcom/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 235
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    if-eqz p0, :cond_1

    .line 240
    invoke-static {}, Lcom/b/b/bu;->b()V

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {}, Lcom/b/b/bu;->a()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 504
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 508
    :cond_0
    if-nez p0, :cond_1

    .line 509
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_2
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    if-nez v0, :cond_3

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/b/b/ct;->a()Lcom/b/b/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/b/ct;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    sget-object v1, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/b/b/bu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 389
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    .line 394
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 460
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/b/b/bu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "ProtonEnabled"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    if-nez p0, :cond_0

    .line 468
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/cw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
