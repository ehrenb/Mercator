.class public final enum Lrx/c$a;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx/c$a;

.field public static final enum b:Lrx/c$a;

.field public static final enum c:Lrx/c$a;

.field private static final synthetic d:[Lrx/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lrx/c$a;

    const-string v1, "OnNext"

    invoke-direct {v0, v1, v2}, Lrx/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c$a;->a:Lrx/c$a;

    new-instance v0, Lrx/c$a;

    const-string v1, "OnError"

    invoke-direct {v0, v1, v3}, Lrx/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c$a;->b:Lrx/c$a;

    new-instance v0, Lrx/c$a;

    const-string v1, "OnCompleted"

    invoke-direct {v0, v1, v4}, Lrx/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/c$a;->c:Lrx/c$a;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/c$a;

    sget-object v1, Lrx/c$a;->a:Lrx/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lrx/c$a;->b:Lrx/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lrx/c$a;->c:Lrx/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lrx/c$a;->d:[Lrx/c$a;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/c$a;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lrx/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/c$a;

    return-object v0
.end method

.method public static values()[Lrx/c$a;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lrx/c$a;->d:[Lrx/c$a;

    invoke-virtual {v0}, [Lrx/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/c$a;

    return-object v0
.end method
