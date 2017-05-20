.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;->arg$1:Z

    return-void
.end method

.method public static lambdaFactory$(Z)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-boolean v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$4;->arg$1:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$updateMatureSwitch$7(ZLjava/lang/Throwable;)V

    return-void
.end method
