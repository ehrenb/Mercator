.class final Lrx/c/a/al$a;
.super Ljava/lang/Object;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/c/a/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/al",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lrx/c/a/al;

    invoke-direct {v0}, Lrx/c/a/al;-><init>()V

    sput-object v0, Lrx/c/a/al$a;->a:Lrx/c/a/al;

    return-void
.end method
