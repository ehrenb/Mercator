.class public abstract Lcom/google/android/gms/internal/db;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/db;
    .annotation runtime Lcom/google/android/gms/internal/in;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/db;
    .annotation runtime Lcom/google/android/gms/internal/in;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/db;
    .annotation runtime Lcom/google/android/gms/internal/in;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/db$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/db$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/db;->a:Lcom/google/android/gms/internal/db;

    new-instance v0, Lcom/google/android/gms/internal/db$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/db$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/db;->b:Lcom/google/android/gms/internal/db;

    new-instance v0, Lcom/google/android/gms/internal/db$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/db$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/db;->c:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/db;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
