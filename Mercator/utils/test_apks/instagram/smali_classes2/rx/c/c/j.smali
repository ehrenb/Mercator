.class public final Lrx/c/c/j;
.super Lrx/g;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/c/j$b;,
        Lrx/c/c/j$a;
    }
.end annotation


# static fields
.field public static final a:Lrx/c/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrx/c/c/j;

    invoke-direct {v0}, Lrx/c/c/j;-><init>()V

    sput-object v0, Lrx/c/c/j;->a:Lrx/c/c/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 41
    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 125
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lrx/g$a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lrx/c/c/j$a;

    invoke-direct {v0}, Lrx/c/c/j$a;-><init>()V

    return-object v0
.end method
