.class public final Lio/realm/internal/h;
.super Ljava/lang/ref/PhantomReference;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lio/realm/internal/g;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:I

.field final c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILio/realm/internal/g;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/g;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lio/realm/internal/g;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 44
    iput p1, p0, Lio/realm/internal/h;->b:I

    .line 45
    iget-wide v0, p2, Lio/realm/internal/g;->c:J

    iput-wide v0, p0, Lio/realm/internal/h;->a:J

    .line 46
    iput-object p4, p0, Lio/realm/internal/h;->c:Ljava/lang/Integer;

    .line 47
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lio/realm/internal/h;->b:I

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native reference type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/internal/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    iget-wide v0, p0, Lio/realm/internal/h;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/LinkView;->nativeClose(J)V

    .line 64
    :goto_0
    return-void

    .line 58
    :pswitch_1
    iget-wide v0, p0, Lio/realm/internal/h;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/UncheckedRow;->nativeClose(J)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
