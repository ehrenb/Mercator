.class final synthetic Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:[Ljava/lang/String;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$1:[Ljava/lang/String;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$3:Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;

    return-void
.end method

.method public static lambdaFactory$([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;-><init>([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$1:[Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$$Lambda$1;->arg$3:Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils;->lambda$extractReferrer$0([Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/util/referrer/SimpleTimedFuture;)V

    return-void
.end method
