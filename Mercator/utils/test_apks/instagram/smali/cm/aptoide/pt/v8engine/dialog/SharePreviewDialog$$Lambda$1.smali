.class final synthetic Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;->arg$1:Landroid/widget/CheckBox;

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/CheckBox;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;-><init>(Landroid/widget/CheckBox;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;->arg$1:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->lambda$getPreviewDialogBuilder$0(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
