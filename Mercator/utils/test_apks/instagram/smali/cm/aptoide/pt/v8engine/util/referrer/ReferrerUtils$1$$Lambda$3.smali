.class final synthetic Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/database/realm/MinimalAd;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/database/realm/MinimalAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;->arg$1:Lcm/aptoide/pt/database/realm/MinimalAd;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/database/realm/MinimalAd;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;-><init>(Lcm/aptoide/pt/database/realm/MinimalAd;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1$$Lambda$3;->arg$1:Lcm/aptoide/pt/database/realm/MinimalAd;

    check-cast p1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/util/referrer/ReferrerUtils$1;->lambda$null$1(Lcm/aptoide/pt/database/realm/MinimalAd;Lcm/aptoide/pt/database/realm/MinimalAd;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
