.class final synthetic Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor$$Lambda$1;->arg$1:Ljava/lang/String;

    check-cast p1, Lio/realm/u;

    invoke-static {v0, p1}, Lcm/aptoide/pt/database/accessors/PaymentAuthorizationAccessor;->lambda$getPaymentAuthorizations$0(Ljava/lang/String;Lio/realm/u;)Lio/realm/af;

    move-result-object v0

    return-object v0
.end method
