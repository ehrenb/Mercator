.class public final enum Lrx/c/a/e;
.super Ljava/lang/Enum;
.source "EmptyObservableHolder.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c/a/e;",
        ">;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx/c/a/e;

.field static final b:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lrx/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lrx/c/a/e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c/a/e;->a:Lrx/c/a/e;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/c/a/e;

    sget-object v1, Lrx/c/a/e;->a:Lrx/c/a/e;

    aput-object v1, v0, v2

    sput-object v0, Lrx/c/a/e;->c:[Lrx/c/a/e;

    .line 31
    sget-object v0, Lrx/c/a/e;->a:Lrx/c/a/e;

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    sput-object v0, Lrx/c/a/e;->b:Lrx/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lrx/c/a/e;->b:Lrx/d;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c/a/e;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lrx/c/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c/a/e;

    return-object v0
.end method

.method public static values()[Lrx/c/a/e;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lrx/c/a/e;->c:[Lrx/c/a/e;

    invoke-virtual {v0}, [Lrx/c/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    .line 47
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/e;->a(Lrx/j;)V

    return-void
.end method
