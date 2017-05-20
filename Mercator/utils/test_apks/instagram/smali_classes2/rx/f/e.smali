.class final Lrx/f/e;
.super Lrx/f/d;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final a:Lrx/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/f/e;

    invoke-direct {v0}, Lrx/f/e;-><init>()V

    sput-object v0, Lrx/f/e;->a:Lrx/f/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lrx/f/d;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lrx/f/d;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lrx/f/e;->a:Lrx/f/e;

    return-object v0
.end method
