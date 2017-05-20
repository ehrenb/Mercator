.class final synthetic Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:I

.field private final arg$5:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$3:Ljava/lang/String;

    iput p4, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$4:I

    iput-object p5, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$5:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)Lrx/d$a;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$3:Ljava/lang/String;

    iget v3, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$4:I

    iget-object v4, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$3;->arg$5:Landroid/view/View;

    move-object v5, p1

    check-cast v5, Lrx/j;

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/utils/GenericDialogs;->lambda$createGenericContinueMessage$10(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View;Lrx/j;)V

    return-void
.end method
