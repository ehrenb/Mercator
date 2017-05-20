.class final Lrx/e/d$a;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget v2, p0, Lrx/e/d$a;->b:I

    .line 51
    iget-object v1, p0, Lrx/e/d$a;->a:[Ljava/lang/Object;

    .line 52
    if-nez v1, :cond_0

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lrx/e/d$a;->a:[Ljava/lang/Object;

    .line 61
    :goto_0
    aput-object p1, v0, v2

    .line 62
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrx/e/d$a;->b:I

    .line 63
    return-void

    .line 55
    :cond_0
    array-length v0, v1

    if-ne v2, v0, :cond_1

    .line 56
    shr-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Lrx/e/d$a;->a:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
