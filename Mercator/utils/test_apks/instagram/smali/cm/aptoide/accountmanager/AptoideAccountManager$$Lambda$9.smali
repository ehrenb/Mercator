.class final synthetic Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;->arg$1:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/ref/WeakReference;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$$Lambda$9;->arg$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->lambda$setupRegisterUser$11(Ljava/lang/ref/WeakReference;Landroid/view/View;)V

    return-void
.end method
