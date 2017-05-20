.class final synthetic Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/d$a;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$2:Ljava/lang/String;

    iput p3, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$3:I

    iput p4, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$4:I

    iput p5, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$5:I

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;III)Lrx/d$a;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$2:Ljava/lang/String;

    iget v2, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$3:I

    iget v3, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$4:I

    iget v4, p0, Lcm/aptoide/pt/utils/GenericDialogs$$Lambda$5;->arg$5:I

    move-object v5, p1

    check-cast v5, Lrx/j;

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/utils/GenericDialogs;->lambda$createGenericOkCancelMessage$18(Landroid/content/Context;Ljava/lang/String;IIILrx/j;)V

    return-void
.end method
