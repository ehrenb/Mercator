.class final synthetic Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lrx/j;


# direct methods
.method private constructor <init>(Lrx/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;->arg$1:Lrx/j;

    return-void
.end method

.method public static lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;-><init>(Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$14;->arg$1:Lrx/j;

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/utils/GenericDialogs;->lambda$null$12(Lrx/j;Landroid/content/DialogInterface;I)V

    return-void
.end method
