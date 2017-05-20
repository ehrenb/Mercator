.class final synthetic Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;-><init>(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$7;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    check-cast p1, Lcm/aptoide/pt/model/v7/BaseV7Response;

    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->lambda$null$0(Lcm/aptoide/pt/model/v7/BaseV7Response;)V

    return-void
.end method
