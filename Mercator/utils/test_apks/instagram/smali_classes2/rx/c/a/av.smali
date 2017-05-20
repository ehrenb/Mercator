.class public final Lrx/c/a/av;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/av$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lrx/c/a/av$a;

    invoke-direct {v0}, Lrx/c/a/av$a;-><init>()V

    sput-object v0, Lrx/c/a/av;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lrx/b/f;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lrx/c/a/av;->b:I

    .line 51
    new-instance v0, Lrx/c/a/av$1;

    invoke-direct {v0, p0, p1}, Lrx/c/a/av$1;-><init>(Lrx/c/a/av;Lrx/b/f;)V

    iput-object v0, p0, Lrx/c/a/av;->a:Ljava/util/Comparator;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lrx/c/b/b;

    invoke-direct {v0, p1}, Lrx/c/b/b;-><init>(Lrx/j;)V

    .line 62
    new-instance v1, Lrx/c/a/av$2;

    invoke-direct {v1, p0, v0, p1}, Lrx/c/a/av$2;-><init>(Lrx/c/a/av;Lrx/c/b/b;Lrx/j;)V

    .line 102
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 103
    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 104
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/av;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
