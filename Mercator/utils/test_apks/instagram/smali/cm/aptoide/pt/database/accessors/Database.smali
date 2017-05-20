.class public final Lcm/aptoide/pt/database/accessors/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "aptoide.realm.db"

.field private static final DB_NAME_E:Ljava/lang/String; = "aptoide_mobile.db"

.field private static INSTANCE:Lio/realm/u; = null

.field private static final KEY:Ljava/lang/String; = "KRbjij20wgVyUFhMxm2gUHg0s1HwPUX7DLCp92VKMCt"

.field public static final SCHEMA_VERSION:I = 0x1f91

.field private static isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcm/aptoide/pt/database/accessors/Database;->isInitialized:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private deleteObject(Lio/realm/u;Lio/realm/ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/u;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Lio/realm/u;->c()V

    .line 247
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lio/realm/ad;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p2}, Lio/realm/ad;->deleteFromRealm()V

    .line 249
    invoke-virtual {p1}, Lio/realm/u;->d()V

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Lio/realm/u;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 255
    invoke-virtual {p1}, Lio/realm/u;->e()V

    goto :goto_0
.end method

.method private static extract(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static get()Lio/realm/u;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    sget-boolean v0, Lcm/aptoide/pt/database/accessors/Database;->isInitialized:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call Database.initialize(Context) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-static {}, Lio/realm/u;->n()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method protected static getInternal()Lio/realm/u;
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Lcm/aptoide/pt/database/accessors/Database;->isInitialized:Z

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call Database.initialize(Context) first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    sget-object v0, Lcm/aptoide/pt/database/accessors/Database;->INSTANCE:Lio/realm/u;

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lio/realm/u;->n()Lio/realm/u;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/database/accessors/Database;->INSTANCE:Lio/realm/u;

    .line 142
    :cond_1
    sget-object v0, Lcm/aptoide/pt/database/accessors/Database;->INSTANCE:Lio/realm/u;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    sget-boolean v0, Lcm/aptoide/pt/database/accessors/Database;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lio/realm/x$a;

    invoke-direct {v0, p0}, Lio/realm/x$a;-><init>(Landroid/content/Context;)V

    const-string v1, "aptoide.realm.db"

    invoke-virtual {v0, v1}, Lio/realm/x$a;->a(Ljava/lang/String;)Lio/realm/x$a;

    move-result-object v0

    const-wide/16 v2, 0x1f91

    .line 92
    invoke-virtual {v0, v2, v3}, Lio/realm/x$a;->a(J)Lio/realm/x$a;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;

    invoke-direct {v1}, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;-><init>()V

    invoke-virtual {v0, v1}, Lio/realm/x$a;->a(Lio/realm/ab;)Lio/realm/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x$a;->a()Lio/realm/x;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lio/realm/u;->c(Lio/realm/x;)V

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcm/aptoide/pt/database/accessors/Database;->isInitialized:Z

    goto :goto_0
.end method

.method static synthetic lambda$copyFromRealm$17(Lio/realm/ad;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lio/realm/ad;->isLoaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$copyFromRealm$18(Lio/realm/ad;)Lio/realm/ad;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/u;->d(Lio/realm/ac;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/ad;

    return-object v0
.end method

.method static synthetic lambda$copyFromRealm$4(Lio/realm/ag;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lio/realm/ag;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$copyFromRealm$5(Lio/realm/ag;)Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/u;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$count$0(Ljava/lang/Long;)Lrx/d;
    .locals 2

    .prologue
    .line 104
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$count$6(Ljava/lang/Class;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 147
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findAsList$25(Lio/realm/ag;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 207
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$findAsList$26(Lio/realm/ag;)Lrx/d;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 209
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findAsSortedList$1(Lio/realm/ag;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 111
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$findAsSortedList$2(Lio/realm/ag;)Lrx/d;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 113
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findFirst$14(Lio/realm/ad;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 176
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$findFirst$15(Lio/realm/ad;)Lrx/d;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lio/realm/ad;->asObservable()Lrx/d;

    move-result-object v0

    .line 178
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$get$12(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$get$19(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$get$21(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAll$8(Ljava/lang/Class;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p1, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 159
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAllSorted$10(Ljava/lang/Class;Ljava/lang/String;Lio/realm/u;)Lrx/d;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p2, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/af;->a(Ljava/lang/String;)Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->e()Lrx/d;

    move-result-object v0

    .line 166
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsList$23(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsList$28(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getAsList$30(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;Lio/realm/u;)Lio/realm/af;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p3, p0}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRealm$7(Ljava/lang/Object;)Lio/realm/u;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->getInternal()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method copyFromRealm(Lio/realm/ad;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(TE;)",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$18;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$19;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method copyFromRealm(Lio/realm/ag;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/ag",
            "<TE;>;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public count(Lio/realm/af;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/af",
            "<TE;>;)",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Lio/realm/af;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$7;->lambdaFactory$(Ljava/lang/Class;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 261
    :try_start_0
    invoke-virtual {v1, p1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/ad;

    .line 262
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/database/accessors/Database;->deleteObject(Lio/realm/u;Lio/realm/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 263
    :cond_0
    return-void

    .line 260
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 267
    :try_start_0
    invoke-virtual {v1, p1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/ad;

    .line 268
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/database/accessors/Database;->deleteObject(Lio/realm/u;Lio/realm/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 269
    :cond_0
    return-void

    .line 266
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 228
    :try_start_0
    invoke-virtual {v1, p1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lio/realm/af;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lio/realm/ad;

    .line 229
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/database/accessors/Database;->deleteObject(Lio/realm/u;Lio/realm/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 230
    :cond_0
    return-void

    .line 227
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 273
    :try_start_0
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 274
    invoke-virtual {v1, p1}, Lio/realm/u;->c(Ljava/lang/Class;)V

    .line 275
    invoke-virtual {v1}, Lio/realm/u;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 276
    :cond_0
    return-void

    .line 272
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method public deleteAllIn(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 303
    :try_start_0
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 304
    invoke-virtual {v1, p1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lio/realm/af;->a(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->b()Z

    .line 305
    invoke-virtual {v1}, Lio/realm/u;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 306
    :cond_0
    return-void

    .line 302
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method findAsList(Lio/realm/af;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/af",
            "<TE;>;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$26;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$27;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$28;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lrx/d;->b(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public findAsSortedList(Lio/realm/af;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/af",
            "<TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Lio/realm/af;->a(Ljava/lang/String;)Lio/realm/ag;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Lrx/d;->b(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method findFirst(Lio/realm/af;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Lio/realm/af",
            "<TE;>;)",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lio/realm/af;->f()Lio/realm/ac;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$16;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Lrx/d;->b(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$20;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$21;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$22;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$13;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Class;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$9;->lambdaFactory$(Ljava/lang/Class;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAllSorted(Ljava/lang/Class;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$11;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$29;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$30;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$31;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$32;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAsList(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcm/aptoide/pt/database/accessors/Database;->getRealm()Lrx/d;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$24;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$25;->lambdaFactory$(Lcm/aptoide/pt/database/accessors/Database;)Lrx/b/e;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lio/realm/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 152
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getScheduler()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database$$Lambda$8;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lio/realm/ad;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 294
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 295
    :try_start_0
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 296
    invoke-virtual {v1, p1}, Lio/realm/u;->c(Lio/realm/ac;)V

    .line 297
    invoke-virtual {v1}, Lio/realm/u;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 298
    :cond_0
    return-void

    .line 294
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 288
    :try_start_0
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 289
    invoke-virtual {v1, p1}, Lio/realm/u;->a(Ljava/util/Collection;)V

    .line 290
    invoke-virtual {v1}, Lio/realm/u;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 291
    :cond_0
    return-void

    .line 287
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method

.method synthetic lambda$findAsList$27(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$findAsSortedList$3(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$findFirst$16(Lio/realm/ad;)Lrx/d;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ad;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$13(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findFirst(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$20(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findFirst(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$22(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findFirst(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAll$9(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAllSorted$11(Lio/realm/ag;)Lrx/d;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->copyFromRealm(Lio/realm/ag;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAsList$24(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findAsList(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAsList$29(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findAsList(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getAsList$31(Lio/realm/af;)Lrx/d;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/accessors/Database;->findAsList(Lio/realm/af;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public updateAll(Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/ad;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {}, Lcm/aptoide/pt/database/accessors/Database;->get()Lio/realm/u;

    move-result-object v1

    .line 280
    :try_start_0
    invoke-virtual {v1}, Lio/realm/u;->c()V

    .line 281
    invoke-virtual {v1, p1}, Lio/realm/u;->c(Ljava/lang/Class;)V

    .line 282
    invoke-virtual {v1, p2}, Lio/realm/u;->a(Ljava/util/Collection;)V

    .line 283
    invoke-virtual {v1}, Lio/realm/u;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/realm/u;->close()V

    .line 284
    :cond_0
    return-void

    .line 279
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/realm/u;->close()V

    :cond_1
    throw v0
.end method
