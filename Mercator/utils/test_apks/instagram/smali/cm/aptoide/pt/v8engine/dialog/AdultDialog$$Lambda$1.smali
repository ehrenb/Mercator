.class final synthetic Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Landroid/widget/EditText;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/content/DialogInterface$OnClickListener;

.field private final arg$4:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$1:Landroid/widget/EditText;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$3:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$4:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$1:Landroid/widget/EditText;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$3:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$1;->arg$4:Landroid/app/Activity;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->lambda$buildMaturePinInputDialog$0(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
