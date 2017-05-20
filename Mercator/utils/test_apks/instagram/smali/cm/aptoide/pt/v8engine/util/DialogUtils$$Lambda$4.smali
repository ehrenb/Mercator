.class final synthetic Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private final arg$2:Landroid/app/Activity;

.field private final arg$3:Landroid/support/design/widget/TextInputLayout;

.field private final arg$4:Landroid/support/design/widget/TextInputLayout;

.field private final arg$5:Landroid/support/v7/widget/AppCompatRatingBar;

.field private final arg$6:Landroid/app/AlertDialog;

.field private final arg$7:Lrx/b/a;

.field private final arg$8:Ljava/lang/String;

.field private final arg$9:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$2:Landroid/app/Activity;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$3:Landroid/support/design/widget/TextInputLayout;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$4:Landroid/support/design/widget/TextInputLayout;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$5:Landroid/support/v7/widget/AppCompatRatingBar;

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$6:Landroid/app/AlertDialog;

    iput-object p7, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$7:Lrx/b/a;

    iput-object p8, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$8:Ljava/lang/String;

    iput-object p9, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$9:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 10

    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;-><init>(Lcm/aptoide/pt/v8engine/util/DialogUtils;Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$1:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$2:Landroid/app/Activity;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$3:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$4:Landroid/support/design/widget/TextInputLayout;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$5:Landroid/support/v7/widget/AppCompatRatingBar;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$6:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$7:Lrx/b/a;

    iget-object v7, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$8:Ljava/lang/String;

    iget-object v8, p0, Lcm/aptoide/pt/v8engine/util/DialogUtils$$Lambda$4;->arg$9:Ljava/lang/String;

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->lambda$showRateDialog$11(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/v7/widget/AppCompatRatingBar;Landroid/app/AlertDialog;Lrx/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
