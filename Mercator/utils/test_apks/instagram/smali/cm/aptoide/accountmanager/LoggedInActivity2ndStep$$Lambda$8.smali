.class final synthetic Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;-><init>(Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep$$Lambda$8;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;

    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/LoggedInActivity2ndStep;->lambda$null$1(Ljava/lang/Throwable;)V

    return-void
.end method
