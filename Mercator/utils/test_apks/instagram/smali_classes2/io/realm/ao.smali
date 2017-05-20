.class public final enum Lio/realm/ao;
.super Ljava/lang/Enum;
.source "Sort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/ao;

.field public static final enum b:Lio/realm/ao;

.field private static final synthetic d:[Lio/realm/ao;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lio/realm/ao;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2, v3}, Lio/realm/ao;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/ao;->a:Lio/realm/ao;

    .line 26
    new-instance v0, Lio/realm/ao;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3, v2}, Lio/realm/ao;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/ao;->b:Lio/realm/ao;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/ao;

    sget-object v1, Lio/realm/ao;->a:Lio/realm/ao;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ao;->b:Lio/realm/ao;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/ao;->d:[Lio/realm/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lio/realm/ao;->c:Z

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/ao;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/realm/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/ao;

    return-object v0
.end method

.method public static values()[Lio/realm/ao;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lio/realm/ao;->d:[Lio/realm/ao;

    invoke-virtual {v0}, [Lio/realm/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/ao;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lio/realm/ao;->c:Z

    return v0
.end method
