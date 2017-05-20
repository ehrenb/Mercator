.class final Lrx/c/a/z$a;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/c/a/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/z",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lrx/c/a/z;

    invoke-direct {v0}, Lrx/c/a/z;-><init>()V

    sput-object v0, Lrx/c/a/z$a;->a:Lrx/c/a/z;

    return-void
.end method
