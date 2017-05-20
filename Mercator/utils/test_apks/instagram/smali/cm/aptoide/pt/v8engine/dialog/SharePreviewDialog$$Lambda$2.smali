.class final synthetic Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

.field private final arg$2:Landroid/widget/ImageView;

.field private final arg$3:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$2:Landroid/widget/ImageView;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$3:Landroid/widget/TextView;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;-><init>(Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$1:Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->arg$3:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->lambda$handlePrivacyCheckBoxChanges$1(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
