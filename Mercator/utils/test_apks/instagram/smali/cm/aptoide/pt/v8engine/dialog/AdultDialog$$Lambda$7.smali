.class final synthetic Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final arg$1:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method private constructor <init>(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;->arg$1:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$7;->arg$1:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->lambda$dialogAsk21$6(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;)V

    return-void
.end method
