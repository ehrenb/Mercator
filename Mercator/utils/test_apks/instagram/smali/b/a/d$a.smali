.class public final enum Lb/a/d$a;
.super Ljava/lang/Enum;
.source "ServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/d$a;

.field public static final enum b:Lb/a/d$a;

.field public static final enum c:Lb/a/d$a;

.field public static final enum d:Lb/a/d$a;

.field public static final enum e:Lb/a/d$a;

.field private static final synthetic f:[Lb/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lb/a/d$a;

    const-string v1, "Domain"

    invoke-direct {v0, v1, v2}, Lb/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/d$a;->a:Lb/a/d$a;

    .line 51
    new-instance v0, Lb/a/d$a;

    const-string v1, "Protocol"

    invoke-direct {v0, v1, v3}, Lb/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/d$a;->b:Lb/a/d$a;

    .line 55
    new-instance v0, Lb/a/d$a;

    const-string v1, "Application"

    invoke-direct {v0, v1, v4}, Lb/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/d$a;->c:Lb/a/d$a;

    .line 59
    new-instance v0, Lb/a/d$a;

    const-string v1, "Instance"

    invoke-direct {v0, v1, v5}, Lb/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/d$a;->d:Lb/a/d$a;

    .line 63
    new-instance v0, Lb/a/d$a;

    const-string v1, "Subtype"

    invoke-direct {v0, v1, v6}, Lb/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/d$a;->e:Lb/a/d$a;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lb/a/d$a;

    sget-object v1, Lb/a/d$a;->a:Lb/a/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/d$a;->b:Lb/a/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/d$a;->c:Lb/a/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/d$a;->d:Lb/a/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/d$a;->e:Lb/a/d$a;

    aput-object v1, v0, v6

    sput-object v0, Lb/a/d$a;->f:[Lb/a/d$a;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/d$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lb/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/d$a;

    return-object v0
.end method

.method public static values()[Lb/a/d$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lb/a/d$a;->f:[Lb/a/d$a;

    invoke-virtual {v0}, [Lb/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/d$a;

    return-object v0
.end method
