.class final synthetic Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Landroid/widget/EditText;

.field private final arg$2:Landroid/support/v7/preference/Preference;

.field private final arg$3:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$1:Landroid/widget/EditText;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$2:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$3:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;-><init>(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$1:Landroid/widget/EditText;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$2:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$3;->arg$3:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->lambda$setAdultPinDialog$2(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
