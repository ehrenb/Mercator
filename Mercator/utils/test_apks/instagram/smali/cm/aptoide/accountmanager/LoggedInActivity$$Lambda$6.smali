.class final synthetic Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/LoggedInActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;-><init>(Lcm/aptoide/accountmanager/LoggedInActivity;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$6;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;

    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/LoggedInActivity;->lambda$null$1(Ljava/lang/Throwable;)V

    return-void
.end method
