.class final synthetic Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/LoggedInActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/LoggedInActivity;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;-><init>(Lcm/aptoide/accountmanager/LoggedInActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/LoggedInActivity$$Lambda$1;->arg$1:Lcm/aptoide/accountmanager/LoggedInActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/LoggedInActivity;->lambda$setupListeners$2(Ljava/lang/Void;)V

    return-void
.end method
