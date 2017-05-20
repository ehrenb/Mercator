.class final synthetic Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;->arg$1:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AdultDialog$$Lambda$2;->arg$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/dialog/AdultDialog;->lambda$buildMaturePinInputDialog$1(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
