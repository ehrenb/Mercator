.class final enum Lrx/c/e/m$b;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c/e/m$b;",
        ">;",
        "Lrx/b/e",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx/c/e/m$b;

.field private static final synthetic b:[Lrx/c/e/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lrx/c/e/m$b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/c/e/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c/e/m$b;->a:Lrx/c/e/m$b;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/c/e/m$b;

    sget-object v1, Lrx/c/e/m$b;->a:Lrx/c/e/m$b;

    aput-object v1, v0, v2

    sput-object v0, Lrx/c/e/m$b;->b:[Lrx/c/e/m$b;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c/e/m$b;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lrx/c/e/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c/e/m$b;

    return-object v0
.end method

.method public static values()[Lrx/c/e/m$b;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lrx/c/e/m$b;->b:[Lrx/c/e/m$b;

    invoke-virtual {v0}, [Lrx/c/e/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c/e/m$b;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 81
    return-object p1
.end method
