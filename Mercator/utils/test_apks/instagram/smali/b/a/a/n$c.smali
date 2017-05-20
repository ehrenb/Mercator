.class public final enum Lb/a/a/n$c;
.super Ljava/lang/Enum;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/n$c;

.field public static final enum b:Lb/a/a/n$c;

.field private static final synthetic c:[Lb/a/a/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lb/a/a/n$c;

    const-string v1, "HOST"

    invoke-direct {v0, v1, v2}, Lb/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/n$c;->a:Lb/a/a/n$c;

    .line 27
    new-instance v0, Lb/a/a/n$c;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3}, Lb/a/a/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/a/n$c;

    sget-object v1, Lb/a/a/n$c;->a:Lb/a/a/n$c;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/n$c;->b:Lb/a/a/n$c;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/a/n$c;->c:[Lb/a/a/n$c;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/n$c;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lb/a/a/n$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/n$c;

    return-object v0
.end method

.method public static values()[Lb/a/a/n$c;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lb/a/a/n$c;->c:[Lb/a/a/n$c;

    invoke-virtual {v0}, [Lb/a/a/n$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/n$c;

    return-object v0
.end method
