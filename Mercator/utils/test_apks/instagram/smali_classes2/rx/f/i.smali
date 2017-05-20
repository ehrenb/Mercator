.class final Lrx/f/i;
.super Lrx/f/h;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final a:Lrx/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/f/i;

    invoke-direct {v0}, Lrx/f/i;-><init>()V

    sput-object v0, Lrx/f/i;->a:Lrx/f/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lrx/f/h;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lrx/f/h;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lrx/f/i;->a:Lrx/f/i;

    return-object v0
.end method
