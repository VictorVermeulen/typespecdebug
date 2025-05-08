namespace Results;

model Success<T extends Reflection.Model> {
    ...T;
}

model Error<T extends {errorCode: string;errorMessage: string;details?: unknown}> {
    ...T;
}

enum SortDirection {
    ASC,
    DESC,
}

model Sort {
    column: string;
    direction: SortDirection;
}

model Page<ListItem> {
    search: {
        query?: {
            columns: string[];
            text: string;
        };
        sort?: Sort[];
        columns?: string[];
    };
    pageable: {
        offset: integer;
        pageSize: integer;
        pageNumber: integer;
        totalPages: integer;
        cursor?: string;
        size: integer;
    };
    content: ListItem[];
}
