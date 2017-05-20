.class final synthetic Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Z

.field private final arg$2:Lcm/aptoide/pt/database/realm/MinimalAd;

.field private final arg$3:I

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:J

.field private final arg$6:Z


# direct methods
.method private constructor <init>(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$1:Z

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$2:Lcm/aptoide/pt/database/realm/MinimalAd;

    iput p3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$3:I

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-wide p5, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$5:J

    iput-boolean p7, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$6:Z

    return-void
.end method

.method public static lambdaFactory$(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)Ljava/util/concurrent/Callable;
    .locals 10

    new-instance v1, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;-><init>(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)V

    return-object v1
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$1:Z

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$2:Lcm/aptoide/pt/database/realm/MinimalAd;

    iget v2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$3:I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$5:J

    iget-boolean v6, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$1;->arg$6:Z

    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->lambda$postponeReferrerExtraction$4(ZLcm/aptoide/pt/database/realm/MinimalAd;ILjava/lang/String;JZ)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
