.class final synthetic Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method
