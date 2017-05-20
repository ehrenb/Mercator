.class public final enum Lrx/c/d/b;
.super Ljava/lang/Enum;
.source "Unsubscribed.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c/d/b;",
        ">;",
        "Lrx/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx/c/d/b;

.field private static final synthetic b:[Lrx/c/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lrx/c/d/b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/c/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c/d/b;->a:Lrx/c/d/b;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/c/d/b;

    sget-object v1, Lrx/c/d/b;->a:Lrx/c/d/b;

    aput-object v1, v0, v2

    sput-object v0, Lrx/c/d/b;->b:[Lrx/c/d/b;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c/d/b;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lrx/c/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c/d/b;

    return-object v0
.end method

.method public static values()[Lrx/c/d/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lrx/c/d/b;->b:[Lrx/c/d/b;

    invoke-virtual {v0}, [Lrx/c/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/d/b;

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
