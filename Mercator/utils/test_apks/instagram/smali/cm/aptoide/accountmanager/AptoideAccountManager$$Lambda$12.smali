.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$12;->arg$1:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$unsubscribeStore$14(Ljava/lang/String;Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;)V

    return-void
.end method
