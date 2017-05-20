.class final Lrx/c/a/ag$b;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lrx/c/a/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ag",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lrx/c/a/ag;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lrx/c/a/ag;-><init>(ZI)V

    sput-object v0, Lrx/c/a/ag$b;->a:Lrx/c/a/ag;

    return-void
.end method
