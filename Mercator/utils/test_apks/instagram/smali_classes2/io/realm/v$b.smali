.class final enum Lio/realm/v$b;
.super Ljava/lang/Enum;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/v$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/v$b;

.field public static final enum b:Lio/realm/v$b;

.field private static final synthetic c:[Lio/realm/v$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lio/realm/v$b;

    const-string v1, "TYPED_REALM"

    invoke-direct {v0, v1, v2}, Lio/realm/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/v$b;->a:Lio/realm/v$b;

    .line 58
    new-instance v0, Lio/realm/v$b;

    const-string v1, "DYNAMIC_REALM"

    invoke-direct {v0, v1, v3}, Lio/realm/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/v$b;->b:Lio/realm/v$b;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/v$b;

    sget-object v1, Lio/realm/v$b;->a:Lio/realm/v$b;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/v$b;->b:Lio/realm/v$b;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/v$b;->c:[Lio/realm/v$b;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Class;)Lio/realm/v$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/a;",
            ">;)",
            "Lio/realm/v$b;"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, Lio/realm/u;

    if-ne p0, v0, :cond_0

    .line 62
    sget-object v0, Lio/realm/v$b;->a:Lio/realm/v$b;

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-class v0, Lio/realm/e;

    if-ne p0, v0, :cond_1

    .line 64
    sget-object v0, Lio/realm/v$b;->b:Lio/realm/v$b;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/v$b;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lio/realm/v$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/v$b;

    return-object v0
.end method

.method public static values()[Lio/realm/v$b;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lio/realm/v$b;->c:[Lio/realm/v$b;

    invoke-virtual {v0}, [Lio/realm/v$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/v$b;

    return-object v0
.end method
