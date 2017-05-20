.class public final enum Lb/a/a/l$a;
.super Ljava/lang/Enum;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/l$a;

.field public static final enum b:Lb/a/a/l$a;

.field public static final enum c:Lb/a/a/l$a;

.field public static final enum d:Lb/a/a/l$a;

.field public static final enum e:Lb/a/a/l$a;

.field private static final synthetic f:[Lb/a/a/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lb/a/a/l$a;

    const-string v1, "Remove"

    invoke-direct {v0, v1, v2}, Lb/a/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$a;->a:Lb/a/a/l$a;

    new-instance v0, Lb/a/a/l$a;

    const-string v1, "Update"

    invoke-direct {v0, v1, v3}, Lb/a/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$a;->b:Lb/a/a/l$a;

    new-instance v0, Lb/a/a/l$a;

    const-string v1, "Add"

    invoke-direct {v0, v1, v4}, Lb/a/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$a;->c:Lb/a/a/l$a;

    new-instance v0, Lb/a/a/l$a;

    const-string v1, "RegisterServiceType"

    invoke-direct {v0, v1, v5}, Lb/a/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$a;->d:Lb/a/a/l$a;

    new-instance v0, Lb/a/a/l$a;

    const-string v1, "Noop"

    invoke-direct {v0, v1, v6}, Lb/a/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lb/a/a/l$a;

    sget-object v1, Lb/a/a/l$a;->a:Lb/a/a/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/l$a;->b:Lb/a/a/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/l$a;->c:Lb/a/a/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/l$a;->d:Lb/a/a/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/l$a;->e:Lb/a/a/l$a;

    aput-object v1, v0, v6

    sput-object v0, Lb/a/a/l$a;->f:[Lb/a/a/l$a;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/l$a;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lb/a/a/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/l$a;

    return-object v0
.end method

.method public static values()[Lb/a/a/l$a;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lb/a/a/l$a;->f:[Lb/a/a/l$a;

    invoke-virtual {v0}, [Lb/a/a/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/l$a;

    return-object v0
.end method
