.class public final Lrx/j/e;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/j/e$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/j/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/j/e$a;

    invoke-direct {v0}, Lrx/j/e$a;-><init>()V

    sput-object v0, Lrx/j/e;->a:Lrx/j/e$a;

    return-void
.end method

.method public static a()Lrx/k;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lrx/j/a;->a()Lrx/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/k;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lrx/j/a;->a(Lrx/b/a;)Lrx/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/k;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lrx/j/e;->a:Lrx/j/e$a;

    return-object v0
.end method
