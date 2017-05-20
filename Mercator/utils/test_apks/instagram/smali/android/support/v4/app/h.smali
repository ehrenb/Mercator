.class Landroid/support/v4/app/h;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat23.java"


# instance fields
.field private final a:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/support/v4/app/h;->a:Landroid/app/ActivityOptions;

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/h;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/support/v4/app/h;

    .line 35
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/h;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
