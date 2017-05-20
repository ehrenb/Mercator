.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

    iput-object p2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$4:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;-><init>(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$1:Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;

    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$11;->arg$4:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$registerUserUsingWebServices$13(Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V

    return-void
.end method
