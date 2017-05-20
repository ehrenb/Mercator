.class public final enum Lio/realm/internal/SharedGroup$a;
.super Ljava/lang/Enum;
.source "SharedGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/SharedGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/SharedGroup$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/internal/SharedGroup$a;

.field public static final enum b:Lio/realm/internal/SharedGroup$a;

.field private static final synthetic d:[Lio/realm/internal/SharedGroup$a;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lio/realm/internal/SharedGroup$a;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/SharedGroup$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/SharedGroup$a;->a:Lio/realm/internal/SharedGroup$a;

    .line 53
    new-instance v0, Lio/realm/internal/SharedGroup$a;

    const-string v1, "MEM_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/SharedGroup$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/SharedGroup$a;->b:Lio/realm/internal/SharedGroup$a;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/internal/SharedGroup$a;

    sget-object v1, Lio/realm/internal/SharedGroup$a;->a:Lio/realm/internal/SharedGroup$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/SharedGroup$a;->b:Lio/realm/internal/SharedGroup$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/internal/SharedGroup$a;->d:[Lio/realm/internal/SharedGroup$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lio/realm/internal/SharedGroup$a;->c:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/SharedGroup$a;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lio/realm/internal/SharedGroup$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/SharedGroup$a;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/SharedGroup$a;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/realm/internal/SharedGroup$a;->d:[Lio/realm/internal/SharedGroup$a;

    invoke-virtual {v0}, [Lio/realm/internal/SharedGroup$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/SharedGroup$a;

    return-object v0
.end method
